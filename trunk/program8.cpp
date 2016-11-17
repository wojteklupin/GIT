#include<iostream>
using namespace std;
 
int main()
{
int ilosc_liczb, tymczasowa, i,j;
cout << "Podaj ilosc licz do posortowania: ";
cin >> ilosc_liczb;
int *tablica = new int [ilosc_liczb]; // utworzenie dynamicznej tablicy na 'ilosc_liczb' elementow
 
for (i = 0; i < ilosc_liczb; i++)
{
cout << "Podaj liczba: ";
cin >> tablica[i];
}
 
for (i = 1; i < ilosc_liczb; i++)
{
tymczasowa = tablica[i]; // przechowanie elementu tablicy z zmiennej pomocniczej
for (j = i-1; j >= 0; j--)
{
if (tymczasowa < tablica[j]) // zamiana miejsc
tablica[j+1] = tablica[j];
else
break;
}
tablica[j+1] = tymczasowa;
}
 
for (i = 0; i < ilosc_liczb; i++) // wypisanie posortowanej tablicy
cout << "tablica[" << i << "] = " << tablica[i] << endl;
 
delete [] tablica; // zwolnienie tablicy zaalokowanej dynamicznie
 
return 0;
}