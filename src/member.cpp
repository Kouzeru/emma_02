/*
 *******************************************************************
 *** This software is copyright 2008 by Marcel van Tongeren      ***
 *** You have permission to use, modify, copy, and distribute    ***
 *** this software so long as this copyright notice is retained. ***
 *** This software may not be used in commercial applications    ***
 *** without express written permission from the author.         ***
 ***                                                             ***
 *** 1802 Code based on elf emulator by Michael H Riley with     ***
 *** copyright as below                                          ***
 *******************************************************************
*/

/*
 *******************************************************************
 *** This software is copyright 2006 by Michael H Riley          ***
 *** You have permission to use, modify, copy, and distribute    ***
 *** this software so long as this copyright notice is retained. ***
 *** This software may not be used in commercial applications    ***
 *** without express written permission from the author.         ***
 *******************************************************************
*/

#include "wx/wxprec.h"

#ifdef __BORLANDC__
#pragma hdrstop
#endif

#ifndef WX_PRECOMP
    #include "wx/wx.h"
#endif

#ifdef __WXMSW__
#include "wx/msw/private.h"
#endif

#if !wxUSE_COMBOCTRL
    #error "Please set wxUSE_COMBOCTRL to 1 and rebuild the library."
#endif

#if defined(__WXGTK__) || defined(__WXX11__) || defined(__WXMOTIF__) || defined(__WXMGL__)
#include "app_icon.xpm"
#endif

#include "main.h"

#include "member.h"

MemberScreen::MemberScreen(wxWindow *parent, const wxSize& size)
: Panel(parent, size)
{
}

MemberScreen::~MemberScreen()
{
	delete mainBitmapPointer;

	delete mpSwitchButton;
	delete loadSwitchButton;
	delete runSwitchButton;
	delete inSwitchButton;

	for (int i=0; i<8; i++)
	{
		delete dataSwitchButton[i];
		delete ledPointer[i];
	}
 	delete qLedPointer;
}

void MemberScreen::init()
{
	keyStart_ = 0;
	keyEnd_ = 0;
	lastKey_ = 0;
	forceUpperCase_ = p_Main->getUpperCase(MEMBER);

	wxClientDC dc(this);

	mainBitmapPointer = new wxBitmap(p_Main->getApplicationDir() + "images/membership.png", wxBITMAP_TYPE_PNG);

	runSwitchButton = new SwitchButton(dc, VERTICAL_BUTTON, wxColour(255, 255, 255), BUTTON_DOWN, 57, 212, "");
	mpSwitchButton = new SwitchButton(dc, VERTICAL_BUTTON, wxColour(255, 255, 255), BUTTON_UP, 128, 212, "");
	loadSwitchButton = new SwitchButton(dc, VERTICAL_BUTTON, wxColour(255, 255, 255), BUTTON_UP, 95, 212, "");
	inSwitchButton = new SwitchButton(dc, PUSH_BUTTON, wxColour(255, 255, 255), BUTTON_UP, 18, 212, "");

	for (int i=0; i<8; i++)
	{
		dataSwitchButton[i] = new SwitchButton(dc, VERTICAL_BUTTON, wxColour(255, 255, 255), BUTTON_DOWN, 197+34*(7-i), 212, "");
		ledPointer[i] = new Led(dc, 197+34*(7-i), 136, MEMBERLED);
		updateLed_[i] = true;
	}
	qLedPointer = new Led(dc, 20, 136, MEMBERLEDGREEN);
	updateQLed_ = true;
	this->connectKeyEvent(this);
}

void MemberScreen::onPaint(wxPaintEvent&WXUNUSED(event))
{
	wxPaintDC dc(this);
	dc.DrawBitmap(*mainBitmapPointer, 0, 0);

	for (int i=0; i<8; i++)
	{
		ledPointer[i]->onPaint(dc);
	}
	qLedPointer->onPaint(dc);
	runSwitchButton->onPaint(dc);
	mpSwitchButton->onPaint(dc);
	loadSwitchButton->onPaint(dc);
	inSwitchButton->onPaint(dc);
	for (int i=0; i<8; i++)
	{
		dataSwitchButton[i]->onPaint(dc);
	}
}

void MemberScreen::onMousePress(wxMouseEvent&event)
{
	int x, y;
	event.GetPosition(&x, &y);

	wxClientDC dc(this);

	if (inSwitchButton->onMousePress(dc, x, y))
		p_Computer->onInButtonPress(p_Computer->getData());
}

void MemberScreen::onMouseRelease(wxMouseEvent&event)
{
	int x, y;
	event.GetPosition(&x, &y);

	wxClientDC dc(this);

	if (inSwitchButton->onMouseRelease(dc, x, y))
		p_Computer->onInButtonRelease();
	if (runSwitchButton->onMouseRelease(dc, x, y))
		p_Computer->onRun();
	if (mpSwitchButton->onMouseRelease(dc, x, y))
		p_Computer->onMpButton();
	if (loadSwitchButton->onMouseRelease(dc, x, y))
		p_Computer->onLoadButton();
	for (int i=0; i<8; i++)
	{
		if (dataSwitchButton[i]->onMouseRelease(dc, x, y))
			p_Computer->dataSwitch(i);
	}
}

BEGIN_EVENT_TABLE(Membership, wxFrame)
	EVT_CLOSE (Membership::onClose)
END_EVENT_TABLE()

Membership::Membership(const wxString& title, const wxPoint& pos, const wxSize& size, double clock, ElfConfiguration conf)
: wxFrame((wxFrame *)NULL, -1, title, pos, size)
{
	clockSpeed_ = clock;
	elfConfiguration = conf;

#ifndef __WXMAC__
	SetIcon(wxICON(app_icon));
#endif

	this->SetClientSize(size);

	memberScreenPointer = new MemberScreen(this, size);
	memberScreenPointer->init();
}

Membership::~Membership()
{
	saveRam();
	if (elfConfiguration.vtType != VTNONE)
	{
		p_Main->setVtPos(MEMBER, vtPointer->GetPosition());
		vtPointer->Destroy();
	}
	p_Main->setMainPos(MEMBER, GetPosition());

	delete memberScreenPointer;
}

void Membership::onClose(wxCloseEvent&WXUNUSED(event) )
{
	p_Main->stopComputer();
}

bool Membership::keyDownPressed(int WXUNUSED(key))
{
	return false;
}

bool Membership::keyUpReleased(int key)
{
	if (key == inKey1_ || key == inKey2_)
	{
		onInButtonRelease();
		return true;
	}
	return false;
}

void Membership::onInButtonPress()
{
	onInButtonPress(getData());
}

void Membership::onInButtonPress(Byte value)
{
	inPressed_ = true;
	if (cpuMode_ == LOAD)
	{
		dmaIn(value);
		showData(value);
	}
	else
	{
		ef4SwitchState = 1;
	}
	memberScreenPointer->inSetState(BUTTON_DOWN);
}

void Membership::onInButtonRelease()
{
	if (ef4SwitchState == 1)
	{
		inPressed_ = false;
		ef4SwitchState = 0;
	}
	memberScreenPointer->inSetState(BUTTON_UP);
}

void Membership::configureComputer()
{
	wxString printBuffer;

	for (int i = 0; i < 8; i++)
	{
		inType_[i] = INPUTUNDEFINED;
		switch (elfConfiguration.ioType)
		{
			case IO_TYPE_N0:
				if (i & 1)
				{
					inType_[i] = ELFIN;
					outType_[i] = ELFOUT;
				}
			break;
			case IO_TYPE_N1:
				if (i & 2)
				{
					inType_[i] = ELFIN;
					outType_[i] = ELFOUT;
				}
			break;
			case IO_TYPE_N2:
				if (i & 4)
				{
					inType_[i] = ELFIN;
					outType_[i] = ELFOUT;
				}
			break;
		}
	}
	efType_[4] = ELFINEF;

	p_Main->message("Configuring Membership Card");
	switch (elfConfiguration.ioType)
	{
		case IO_TYPE_N0:
			p_Main->message("	Output 1, 3, 5, 7: display output, input 1, 3, 5, 7: data input");
		break;
		case IO_TYPE_N1:
			p_Main->message("	Output 2, 3, 6, 7: display output, input 2, 3, 6, 7: data input");
		break;
		case IO_TYPE_N2:
			p_Main->message("	Output 4, 5, 6, 7: display output, input 4, 5, 6, 7: data input");
		break;
	}
	p_Main->message("	EF 4: 0 when in button pressed");

	p_Main->message("");
    inKey1_ = p_Main->getDefaultInKey1("Membership");
    inKey2_ = p_Main->getDefaultInKey2("Membership");
	
	resetCpu();
}

void Membership::initComputer()
{
	Show(p_Main->getUseElfControlWindows(MEMBER));
	runButtonState_ = 0;
	for (int i=0; i<8; i++)
	{
		dataSwitchState_[i]=0;
	}
	ef4SwitchState = 0;
	inPressed_ = false;
	mpButtonState_ = 0;
	loadButtonState_ = 1;
}

Byte Membership::ef(int flag)
{
	switch(efType_[flag])
	{
		case 0:
			return 1;
		break;

		case VT100EF:
			return vtPointer->ef();
		break;

		case ELFINEF:
			return ef4();
		break;

		case VTINEF:
			if (inPressed_ == true)
				return 0;
			else
				return vtPointer->ef();
		break;

		default:
			return 1;
	}
}

Byte Membership::ef4()
{
	if (inPressed_ == true)
		return 0;
	else
		return 1;
}

Byte Membership::in(Byte port, Word WXUNUSED(address))
{
	Byte ret;

	switch(inType_[port])
	{
		case 0:
			ret = 255;
		break;

		case INPUTUNDEFINED:
			ret = 0x68 + port;
		break;

		case ELFIN:
			ret = getData();
		break;

		default:
			ret = 255;
	}
	inValues_[port] = ret;
	return ret;
}

Byte Membership::getData()
{
	return(dataSwitchState_[7]?128:0) +(dataSwitchState_[6]?64:0) +(dataSwitchState_[5]?32:0) +(dataSwitchState_[4]?16:0) +(dataSwitchState_[3]?8:0) +(dataSwitchState_[2]?4:0) +(dataSwitchState_[1]?2:0) +(dataSwitchState_[0]?1:0);
}

void Membership::out(Byte port, Word WXUNUSED(address), Byte value)
{
	outValues_[port] = value;

	switch(outType_[port])
	{
		case 0:
			return;
		break;

//		case VT100OUT:
//			vtPointer->out(value);
//		break;

		case ELFOUT:
			showData(value);
 /*           if (value == 0xFF)
            {
 //               if(mainMemory_[scratchpadRegister_[programCounter_]+2] == 0x03 && mainMemory_[scratchpadRegister_[programCounter_]+3] == 0xb7 && mainMemory_[scratchpadRegister_[programCounter_]+6] == 0xbd)
 //                   p_Main->startAutoTerminalSave();
 //               if(mainMemory_[scratchpadRegister_[programCounter_]+2] == 0x80 && mainMemory_[scratchpadRegister_[programCounter_]+3] == 0xb7 && mainMemory_[scratchpadRegister_[programCounter_]+7] == 0x9e)
                    p_Main->stopAutoTerminal();
            }*/
		break;
	}
}

void Membership::showData(Byte val)
{
	for (int i=0; i<8; i++)
	{
		memberScreenPointer->setLed(i, val & 1);
		val = val>>1;
	}
}

void Membership::cycle(int type)
{
	switch(cycleType_[type])
	{
		case 0:
			return;
		break;

		case VT100CYCLE:
			vtPointer->cycleVt();
		break;

	}
}

void Membership::autoBoot()
{
	memberScreenPointer->runSetState(BUTTON_UP);
	runButtonState_ = 1;
	setClear(runButtonState_);
}

void Membership::switchQ(int value)
{
	qLedStatus_ = (qLedStatus_ & 2) | (value & 1);
    memberScreenPointer->setQLed(qLedStatus_);
}

int Membership::getMpButtonState()
{
	return mpButtonState_;
}

void Membership::onRun()
{
	if (runButtonState_)
	{
		memberScreenPointer->runSetState(BUTTON_DOWN);
		runButtonState_ = 0;
	}
	else
	{
		memberScreenPointer->runSetState(BUTTON_UP);
		runButtonState_ = 1;
		p_Main->startTime();
	}
	setClear(runButtonState_);
	p_Main->eventUpdateTitle();
}

void Membership::onMpButton()
{
	if (!mpButtonState_)
	{
		mpButtonState_ = 1;
	}
	else
	{
		mpButtonState_ = 0;
	}
}

void Membership::onLoadButton()
{
	if (loadButtonState_)
	{
		loadButtonState_ = 0;
	}
	else
	{
		loadButtonState_ = 1;
	}
	setWait(loadButtonState_);
}

void Membership::dataSwitch(int i)
{
	if (dataSwitchState_[i])
	{
		dataSwitchState_[i] = 0;
	}
	else
	{
		dataSwitchState_[i] = 1;
	}
}

void Membership::startComputer()
{
	resetPressed_ = false;

	ramStart_ = 0;
	Word loadStart = 0;

	switch(p_Main->getRamType(MEMBER))
	{
		case 0:
			defineMemoryType(0x0, 0x7ff, RAM);
            ramEnd_ = 0x7ff;
            p_Main->assDefault("mycode", 0, 0x6FF);
		break;

		case 1:
			defineMemoryType(0x0, 0xfff, RAM);
			ramEnd_ = 0xfff;
            p_Main->assDefault("mycode", 0, 0xEFF);
        break;

		case 2:
			defineMemoryType(0x0, 0x3fff, RAM);
			ramEnd_ = 0x3fff;
            p_Main->assDefault("mycode", 0, 0xFFF);
        break;

		case 3:
			defineMemoryType(0x0, 0x7fff, RAM);
			ramEnd_ = 0x7fff;
            p_Main->assDefault("mycode", 0, 0xFFF);
		break;

        case 4:
            defineMemoryType(0x0, 0xffff, RAM);
            ramEnd_ = 0xffff;
            p_Main->assDefault("mycode", 0, 0xFFF);
        break;
            
        case 5:
            defineMemoryType(0x0, 0x7fff, ROM);
            defineMemoryType(0x8000, 0xffff, RAM);
            ramStart_ = 0x8000;
            ramEnd_ = 0xffff;
            p_Main->assDefault("mycode", 0x8000, 0x8FFF);
        break;
            
        case 6:
            defineMemoryType(0x0, 0x7fff, RAM);
            defineMemoryType(0x8000, 0xffff, ROM);
            loadStart = 0x8000;
            ramEnd_ = 0x7fff;
            p_Main->assDefault("mycode", 0, 0xFFF);
        break;
    }

	p_Main->enableDebugGuiMemory();

	loadRam();
    readProgram(p_Main->getRomDir(MEMBER, MAINROM1), p_Main->getRomFile(MEMBER, MAINROM1), p_Main->getLoadromModeMembership(), loadStart, NONAME);
    
	configureElfExtensions();
	if (elfConfiguration.autoBoot)
	{
		scratchpadRegister_[0]=p_Main->getBootAddress("Membership", MEMBER);
		autoBoot();
	}

	if (elfConfiguration.vtType != VTNONE)
		setEf(4,0);

	p_Main->setSwName("");
	p_Main->updateTitle();
	address_ = 0;

	cpuCycles_ = 0;
	p_Main->startTime();
	memberScreenPointer->setLedMs(p_Main->getLedTimeMs(MEMBER));

	qLedStatus_ = (1 ^ elfConfiguration.vtEf) << 1;
	memberScreenPointer->setQLed(qLedStatus_);

	threadPointer->Run();
}

void Membership::writeMemDataType(Word address, Byte type)
{
	switch (memoryType_[address/256])
	{
		case RAM:
            if (mainMemoryDataType_[address] != type)
            {
                p_Main->updateAssTabCheck(scratchpadRegister_[programCounter_]);
                mainMemoryDataType_[address] = type;
            }
        break;

        case ROM:
            if (mainMemoryDataType_[address] != type)
			{
				p_Main->updateAssTabCheck(scratchpadRegister_[programCounter_]);
				mainMemoryDataType_[address] = type;
			}
		break;
	}
}

Byte Membership::readMemDataType(Word address)
{
	switch (memoryType_[address / 256])
	{
		case RAM:
            return mainMemoryDataType_[address];
        break;

        case ROM:
			return mainMemoryDataType_[address];
		break;
	}
	return MEM_TYPE_UNDEFINED;
}

Byte Membership::readMem(Word addr)
{
	address_ = addr;

	switch (memoryType_[addr/256])
	{
		case UNDEFINED:
			return 255;
		break;

		case RAM:
			return mainMemory_[addr ];
		break;
            
        case ROM:
            return mainMemory_[addr ];
        break;

		default:
			return 255;
		break;
	}
}

void Membership::writeMem(Word addr, Byte value, bool writeRom)
{
	address_ = addr;

	switch (memoryType_[addr/256])
	{
		case UNDEFINED:
		case ROM:
			if (writeRom)
				mainMemory_[addr]=value;
		break;

		case RAM:
			if (!getMpButtonState())
			{
                if (mainMemory_[addr]==value)
					return;

                mainMemory_[addr]=value;
				if (addr >= memoryStart_ && addr<(memoryStart_ + 256))
					p_Main->updateDebugMemory(addr);
				p_Main->updateAssTabCheck(addr);
			}
		break;
	}
}

void Membership::cpuInstruction()
{
	if (cpuMode_ == RUN)
	{
		if (steps_ != 0)
		{
			cycle0_=0;
			machineCycle();
			if (cycle0_ == 0) machineCycle();
			if (cycle0_ == 0 && steps_ != 0)
			{
				cpuCycle();
				cpuCycles_ += 2;
			}
			if (debugMode_)
				p_Main->showInstructionTrace();
		}
		else
			soundCycle();

		playSaveLoad();
		checkElfFunction();
		if (resetPressed_)
		{
			resetCpu();
			ElfConfiguration currentElfConfig = p_Main->getElfConfiguration(MEMBER);
			if (currentElfConfig.clearRam)
			{
				p_Main->eventSetCheckBox("ClearRamMembership", false);
				for (int i=ramStart_; i<=ramEnd_; i++)
					mainMemory_[i] = 0;
			}
			if (currentElfConfig.autoBoot)
			{
				scratchpadRegister_[0]=p_Main->getBootAddress("Membership", MEMBER);
				autoBoot();
			}
			qLedStatus_ = (1 ^ elfConfiguration.vtEf) << 1;
			memberScreenPointer->setQLed(qLedStatus_);
			resetPressed_ = false;
			p_Main->setSwName("");
            p_Main->eventUpdateTitle();
		}
		if (debugMode_)
			p_Main->cycleDebug();
	}
	else
	{
		machineCycle();
		machineCycle();
		cpuCycles_ = 0;
		p_Main->startTime();
		if (cpuMode_ == LOAD)
		{
			showData(readMem(address_));
			threadPointer->Sleep(1);
		}
	}
}

void Membership::configureElfExtensions()
{
	wxString fileName, fileName2;

	if (elfConfiguration.vtType != VTNONE)
	{
		double zoom = p_Main->getZoomVt();
        if (elfConfiguration.vtType == VT52)
            vtPointer = new Vt100("Membership Card - VT 52", p_Main->getVtPos(MEMBER), wxSize(640*zoom, 400*zoom), zoom, MEMBER, clockSpeed_, elfConfiguration);
        else
            vtPointer = new Vt100("Membership Card - VT 100", p_Main->getVtPos(MEMBER), wxSize(640*zoom, 400*zoom), zoom, MEMBER, clockSpeed_, elfConfiguration);
		p_Vt100 = vtPointer;
		vtPointer->configureMember(elfConfiguration.baudR, elfConfiguration.baudT);
		vtPointer->Show(true);
		vtPointer->drawScreen();
		setSoundFollowQ (false);
	}
	else
		setSoundFollowQ (true);
}

void Membership::moveWindows()
{
	if (elfConfiguration.vtType != VTNONE)
		vtPointer->Move(p_Main->getVtPos(MEMBER));
}

void Membership::updateTitle(wxString Title)
{
    if (elfConfiguration.vtType == VT52)
		vtPointer->SetTitle("Membership Card - VT 52"+Title);
    if (elfConfiguration.vtType == VT100)
        vtPointer->SetTitle("Membership Card - VT 100"+Title);
}

void Membership::setForceUpperCase(bool status)
{
	if (elfConfiguration.vtType != VTNONE)
		vtPointer->setForceUCVt(status);
}

void Membership::terminalSave(wxString fileName)
{
    if (elfConfiguration.vtType != VTNONE)
        vtPointer->terminalSaveVt(fileName);
}

void Membership::terminalLoad(wxString fileName)
{
    if (elfConfiguration.vtType != VTNONE)
        vtPointer->terminalLoadVt(fileName);
}

void Membership::terminalStop()
{
    if (elfConfiguration.vtType != VTNONE)
        vtPointer->terminalStopVt();
}

void Membership::onReset()
{
	resetPressed_ = true;
}

void Membership::saveRam()
{
	ElfConfiguration currentElfConfig = p_Main->getElfConfiguration(MEMBER);
	if (!currentElfConfig.nvr)
		return;

	Byte value;
	wxFile outputFile;
	wxString fileName;

	fileName = p_Main->getMainDir()+"ramdump.bin";

	if (wxFile::Exists(fileName))
		outputFile.Open(fileName, wxFile::write);
	else
		outputFile.Create(fileName);
	for (long address = ramStart_; address <= ramEnd_; address++)
	{
		value = mainMemory_[address];
		outputFile.Write(&value, 1);
	}
	outputFile.Close();
}

void Membership::loadRam()
{
	ElfConfiguration currentElfConfig = p_Main->getElfConfiguration(MEMBER);
	if (currentElfConfig.clearRam)
	{
		p_Main->eventSetCheckBox("ClearRamMembership", false);
		for (int i=ramStart_; i<=ramEnd_; i++)
			mainMemory_[i] = 0;
		return;
	}
	if (!currentElfConfig.nvr)
    {
        initRam(ramStart_, ramEnd_);
		return;
    }

	wxFFile inFile;
	size_t length;
	char buffer[0x10000];

	if (wxFile::Exists(p_Main->getMainDir()+"ramdump.bin"))
	{
		if (inFile.Open(p_Main->getMainDir()+"ramdump.bin", "rb"))
		{
			length = inFile.Read(buffer, 0x10000);
			for (size_t i=0; i<length; i++)
            {
                if ((i+ramStart_)<=ramEnd_)
                    mainMemory_[i+ramStart_] = (Byte)buffer[i];
            }
			inFile.Close();
		}
	}
    else
        initRam(ramStart_, ramEnd_);
}

void Membership::sleepComputer(long ms)
{
	threadPointer->Sleep(ms);
}

void Membership::ledTimeout()
{
	memberScreenPointer->ledTimeout();
}

void Membership::setLedMs(long ms)
{
	memberScreenPointer->setLedMs(ms);
}

Byte Membership::getKey(Byte vtOut)
{
	return memberScreenPointer->getKey(vtOut);
}

void Membership::activateMainWindow()
{
	bool maximize = IsMaximized();
	Iconize(false);
	Raise();
	Show(true);
	Maximize(maximize);
}

void Membership::setGreenLed(int status)
{
	qLedStatus_ = (qLedStatus_ & 1) | ((status & 1) << 1);
	memberScreenPointer->setQLed(qLedStatus_);
}