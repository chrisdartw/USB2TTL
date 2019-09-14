
README
===========================
Compare the advantages and disadvantages of the following USB to TTL converters.

****

# Index
- [README](#readme)
- [Index](#index)
    - [Driver & Hardware ID](#driver--hardware-id)
    - [Baud](#baud)
    - [Loopback tester utility](#loopback-tester-utility)

****

### Driver & Hardware ID
| Device | Driver & Hardware ID
|--------|---------------
| FT232R | [DL][DL_FT] USB\VID_0403&PID_6001&REV_0400
| CP210x | [DL][DL_CP]
| CH340G | [DL][DL_CH] USB\VID_1A86&PID_7523&REV_0254
| PL2303 | [DL][DL_PL] USB\VID_067B&PID_2303&REV_0400, REV_0300 for [Old][OLD]

[DL_FT]: http://www.ftdichip.com/Drivers/CDM/CDM%20v2.12.28%20WHQL%20Certified.zip
[DL_CP]: http://www.silabs.com/documents/public/software/CP210x_Universal_Windows_Driver.zip
[DL_CH]: http://www.wch.cn/downloads/file/5.html
[DL_PL]: http://www.prolific.com.tw/UserFiles/files/PL2303_Prolific_DriverInstaller_v1200.zip
[OLD]:   http://www.auelectronics.com/downloads/PL2303_HXA_Driver_V10518.zip

****

### Baud
| Device | Baud
|--------|--------
| FT232R |                    *        , 230400, 460800, 921600, [Spec][FT_BAUD]
| CP210x |
| CH340G | 75, 110, 134, 150, *, 128000,
| PL2303 | 75, 110, 134, 150, *, 128000, [DCHU][PL_DCHU] only
[FT_BAUD]:http://www.ftdichip.com/Support/Documents/AppNotes/AN_120_Aliasing_VCP_Baud_Rates.pdf
[PL_DCHU]:http://www.prolific.com.tw/UserFiles/files/PL2303-W10RS3RS4-DCHU-DriverSetup_v1192_20180503.zip
\* = 300, 600, 1200, 1800, 2400, 4800, 7200, 9600, 14400, 19200, 38400, 57600, 115200

****

### Loopback tester utility
* http://web.archive.org/web/20120304112647/http://www.madsencircuits.com/serial_loopback/SerialLoopbackTestSetup_110.exe
* http://www.uwe-sieber.de/files/com_name_arbiter_setter.zip
* http://www.oneping.com.tw/downlaod/ap/RapidTest.zip
* http://www.oneping.com.tw/downlaod/ap/CableTest2305.zip
* http://www.passmark.com/downloads/bitpro8_1_1025.exe
* http://www.passmark.com/downloads/bitstd8_1_1025.exe
```
-----START_OF_KEY-----
Larissa Bendel
#ANEAAKIBRHKAYCZ999WU2UMW6IAF5CEF47AZTD3V
8B7U93UWWH2DFM7AGU3DVKEU9QPWAJ4QIVKQBMG5
YC4G55MSGFZFHXPWIHSSA4N93DB9RNAATEVZDP5D
------END_OF_KEY------
```
```
private void SeriaLoopbackForm_Load(object sender, EventArgs e)
{
    // ...
	int num = 2400;
	int num2 = 0;
	if (int.TryParse(Interaction.InputBox(string.Format("Please enter the new Baud : (>= {0})", num), "New Baud", Conversions.ToString(this.SP.BaudRate), -1, -1), out num2))
	{
		this.SP.BaudRate = ((num2 < num) ? num : num2);
	}
	else
	{
		this.SP.BaudRate = 115200;
	}
	for (int i = 0; i < this.baudRate.Length; i++)
	{
		this.baudRate[i] = this.SP.BaudRate;
	}
	// ...
}
```

****
