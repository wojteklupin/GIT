// komentarz
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
 
namespace InsertionSort
{
class Program
{
static int sprawdzenie(string liczba)
{
int ilosc_liczb;
 
while (!Int32.TryParse(liczba, out ilosc_liczb) || liczba.ElementAt(0) == '-')  // Sprawdz czy wpisany znak jest liczb¹ oraz czy jest to liczba dodatnia
{
Console.Write("Podaj iloœæ liczb do posortowania: ");
liczba = Console.ReadLine();
}
 
return ilosc_liczb;
}
 
static void Main(string[] args)
{
int ilosc_liczb, element, bufor;
string liczba = "nic";
 
Random randomizer = new Random();
 
ilosc_liczb = sprawdzenie(liczba);
 
int[] do_posortowania = new int[ilosc_liczb];                                   // Deklaracja dwóch tablic zawieraj¹ce elementy do posortowania
int[] posortowane = new int[ilosc_liczb];                                       // oraz elementy posortowane
 
Console.WriteLine("");
 
for (int i = 0; i < ilosc_liczb; i++)                                           // Wype³nienei tablicy do posortowania liczbami losowymi
{
element = randomizer.Next(101);                                             // za zakresu 0 - 100
do_posortowania[i] = element;
Console.Write(do_posortowania[i] + " ");                                    // oraz wyœwietlenie wyniku na ekranie
}
 
Console.WriteLine("");
posortowane[0] = do_posortowania[0];                                            // przepisanie elementu pierwszego do tablicy posortowanej
// w myœl algorytmu
for (int i = 1; i < ilosc_liczb; i++)                                       // Algorytm sortowania przewz wstawienie
{
for (int j = i; j > 0; j--)
{
 
if (posortowane[j - 1] > do_posortowania[i])                        // Sprawdz czy dany element tablicy nieposortowanej jest mniejszy 
{                                                                   // od elementów tablicy posortowanej. Jeœli tak to zamieñ elementy
bufor = posortowane[j - 1];                                     // miejscami.
posortowane[j - 1] = do_posortowania[i];
posortowane[j] = bufor;
}
else
{
posortowane[j] = do_posortowania[i];                            // Jeœli nie to zapisz dan¹ liczbe na ostanim wolnym miejscu w tablicy posortowanej
break;
}
}
}
 
Console.WriteLine("Posortowane liczby:");
 
for (int i = 0; i < ilosc_liczb; i++)                                       // Wyœwietlenie tablicy posortwanej.
{
Console.Write(posortowane[i] + " ");
}
Console.Read();
}
}
}