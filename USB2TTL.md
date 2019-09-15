
README
===========================
Compare the advantages and disadvantages of the popular USB to TTL converters.

****

## Index
- [README](#readme)
	- [Index](#index)
	- [Driver & Hardware ID](#driver--hardware-id)
	- [Baud](#baud)
	- [Loopback test utility](#loopback-test-utility)
	- [Miscellaneous information](#miscellaneous-information)

****

## Driver & Hardware ID
| Device |   Driver    | Hardware ID
|-------:|:-----------:|-------
| FT232R | [DL][DL_FT] | USB\VID_0403&PID_6001&REV_0400
| CP2102 | [DL][DL_CP] |
| CH340G | [DL][DL_CH] | USB\VID_1A86&PID_7523&REV_0254
| PL2303 | [DL][DL_PL] | USB\VID_067B&PID_2303&REV_0400, REV_0300 for [Old][OLD]

[DL_FT]: http://www.ftdichip.com/Drivers/CDM/CDM%20v2.12.28%20WHQL%20Certified.zip
[DL_CP]: http://www.silabs.com/documents/public/software/CP2102_Universal_Windows_Driver.zip
[DL_CH]: http://www.wch.cn/downloads/file/5.html
[DL_PL]: http://www.prolific.com.tw/UserFiles/files/PL2303_Prolific_DriverInstaller_v1200.zip
[OLD]:   http://fen.home.pl/pub/sterowniki/Unitek/Y-105/PL2303_Prolific_DriverInstaller_v1417.zip
[ORG]:   http://web.archive.org/web/20120201222623/http://www.prolific.com.tw/support/files//IO%20Cable/PL-2303/Drivers%20-%20Generic/Windows/allinone/PL2303_Prolific_DriverInstaller_v1417.zip

****

## Baud
| Device |  Datasheet  | Buffer  R/T | Baud
|-------:|:-----------:|:-----------:|--------
| FT232R | [DL][DS_FT] |  128 / 256  | 300 bps to 3 Mbps
| CP2102 | [DL][DS_CP] |  576 / 640  | 300 bps to 1 Mbps
| CH340G | [DL][DS_CH] |      /      |  50 bps to 2 Mbps
| PL2303 | [DL][DS_PL] |  256 / 256  |  75 bps to 6 Mbps

[DS_FT]: http://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232R.pdf
[DS_CP]: http://www.silabs.com/documents/public/data-sheets/CP2102-9.pdf
[DS_CH]: http://wch-ic.com/downfile/79
[DS_PL]: http://www.mpja.com/download/pl2303hxreva_v1.6.pdf
[DS_TI]: http://www.ti.com/lit/ds/symlink/max3232.pdf
[DS_SP]: http://www.maxlinear.com/ds/sp3222e_sp3232e.pdf

****

## Loopback test utility
* http://www.sudt.com/download/AccessPort137.zip
* http://www.uwe-sieber.de/files/com_name_arbiter_setter.zip
* http://www.oneping.com.tw/downlaod/ap/RapidTest.zip
* http://www.oneping.com.tw/downlaod/ap/CableTest2305.zip
* http://www.passmark.com/downloads/bitpro8_1_1025.exe
* http://www.passmark.com/downloads/bitstd8_1_1025.exe
* http://web.archive.org/web/20120304112647/http://www.madsencircuits.com/serial_loopback/SerialLoopbackTestSetup_110.exe

****

## Miscellaneous information
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
