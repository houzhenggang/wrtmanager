wrtmanager

OpenWRT Manager based on expect.

Ten skrypt ma służyć do masowej zmiany SSID oraz haseł PSK w sieci opartej o urządzenia z systemem OpenWRT.

Skrypt jest pisany z wykorzystaniem narzędzia expect które jest nakładką na język skryptowy tcl.

Lista urządzeń w postaci pliku txt z adresami, lokalizacją, hasłami, loginami oraz nazwą oddzielona przecinkami.

Całość składa się ze skryptu wrtmanager.sh - skrypt prosi o podanie nazwy pliku z listą urządzeń, oraz wybranie pożądanej akcji - Zmiana SSID lub dodanie reguły w iptables.

Skrypt wrtmanager.sh wywołuje w zależności od wybranego zadania odpowiedni skrypt zmieniający wybrany parametr. Dla zmiany SSID wywłowyany jest skrypt wifi.sh

Dodanie modułu polega na dopisaniu odpowiedniego skryptu wywoływanego oraz dodaniu pozycji w menu.
