# wrtmanager
OpenWRT Manager based on expect.

Ten skrypt ma służyć do masowej zmiany SSID oraz haseł PSK w sieci opartej o urządzenia z systemem OpenWRT.

Skrypt jest pisany z wykorzystaniem narzędzia expect które jest nakładką na język skryptowy tcl.

Lista urządzeń w postaci pliku txt z adresami, lokalizacją, hasłami, loginami oraz nazwą oddzielona przecinkami.
Skrypt wyszukuje w bieżącym katalogu plik lista.txt i używa go jako listy urządzeń.

wywołanie ma postać ./wrtmanager.sh <lokalizacja lub all> <SSID> <Pre-shared key>

Skrypt wykorzystując protokół ssh loguje się na kolejne urządzenia z listy, na każdym kolejnym sprawdza czy jest włączony interfejs radio0 na urządzeniu, przekonfigurowuje SSID oraz PSK, restartuje sieć na urządzeniu, sprawdza poprawność operacji i wylogowuje się z urządzenia. 
