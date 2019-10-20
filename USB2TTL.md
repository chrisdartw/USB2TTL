
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
| CP2102 | [DL][DL_CP] | USB\VID_10C4&PID_EA60&REV_0100
| PL2303 | [DL][DL_PL] | USB\VID_067B&PID_2303&REV_0400, REV_0300 for [Old][OLD]
| CH340G | [DL][DL_CH] | USB\VID_1A86&PID_7523&REV_0254, PID_5523&REV_0304 for CH341A

[DL_FT]: http://www.ftdichip.com/Drivers/CDM/CDM%20v2.12.28%20WHQL%20Certified.zip
[DL_CP]: http://www.silabs.com/documents/public/software/CP210x_Universal_Windows_Driver.zip
[DL_PL]: http://www.prolific.com.tw/UserFiles/files/PL2303_Prolific_DriverInstaller_v1200.zip
[DL_CH]: http://www.wch.cn/downloads/file/5.html

[PG_FT]: http://www.ftdichip.com/Drivers/VCP.htm
[PG_CP]: https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers
[PG_PL]: http://www.prolific.com.tw/US/ShowProduct.aspx?p_id=225&pcid=41
[PG_CH]: http://www.wch.cn/search?q=CH34&t=downloads

[OLD]:   http://fen.home.pl/pub/sterowniki/Unitek/Y-105/PL2303_Prolific_DriverInstaller_v1417.zip
[ORG]:   http://web.archive.org/web/20120201222623/http://www.prolific.com.tw/support/files//IO%20Cable/PL-2303/Drivers%20-%20Generic/Windows/allinone/PL2303_Prolific_DriverInstaller_v1417.zip

****

## Baud
| Device |  Datasheet  | Buffer  R/T |  Throughput  | Baud
|-------:|:-----------:|:-----------:|:------------:|--------
| FT232R | [DL][DS_FT] |  128 / 256  |     4 th     | 300 bps to 3 Mbps
| CP2102 | [DL][DS_CP] |  576 / 640  |     2 nd     | 300 bps to 1 Mbps
| CH340G | [DL][DS_CH] |      /      |     3 rd     |  50 bps to 2 Mbps
| PL2303 | [DL][DS_PL] |  256 / 256  |     1 st     |  75 bps to 6 Mbps, 12 Mbps for 2303HXD

[DS_FT]: http://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232R.pdf
[DS_CP]: http://www.silabs.com/documents/public/data-sheets/CP2102-9.pdf
[DS_PL]: http://www.mpja.com/download/pl2303hxreva_v1.6.pdf
[DS_CH]: http://www.wch.cn/downloads/file/79.html
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
