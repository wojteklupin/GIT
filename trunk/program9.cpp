#include<iostream>
using namespace std;
 
int main()
{
int ilosc_liczb, max, i,j, pomoc;
cout << "Podaj ilosc licz do posortowania: ";
cin >> ilosc_liczb;
int *tablica = new int [ilosc_liczb]; // utworzenie dynamicznej tablicy na 'ilosc_liczb' elementow
 
for (i = 0; i < ilosc_liczb; i++)
{
cout << "Podaj liczba: ";
cin >> tablica[i];
}
 
for (i = 0; i < ilosc_liczb; i++) // zaczynamy od pierwszego elementu i konczymy na ostatnim
{
max = i; // indeks najmniejszego znalezionego elementu
for (j = i+1; j < ilosc_liczb; j++) // poszukujemy najmniejszego elementu poczawszy od i
{
if (tablica[j] < tablica[max]) // jezeli znalezlismy mniejszy element zapisujemy jego indeks w max
max = j;
}
// wstawiamy najmniejszy element na odpowiednie miejsce
pomoc = tablica[max];
tablica[max] = tablica[i];
tablica[i] = pomoc;
}
 
for (i = 0; i < ilosc_liczb; i++) // wypisanie posortowanej tablicy
cout << "tablica[" << i << "] = " << tablica[i] << endl;
 
delete [] tablica; // zwolnienie tablicy zaalokowanej dynamicznie
 
return 0;
}