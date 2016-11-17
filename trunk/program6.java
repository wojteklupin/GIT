// master
public class Insert {
 
 
private static int tablica[];
private static int ile_liczb;
 
private static void insertionsort(int tablica[], int ile_liczb) {
int i,j,v;
 
for (i=1;i<ile_liczb;i++) {
j=i;
v=tablica[i];
while ((j>0) && (tablica[j-1]>v)) {
tablica[j]=tablica[j-1];
j--;
}
tablica[j]=v;
}
}
 
 
public static void main(String[] args) {
 
int i,liczba;
 
System.out.println("Ile liczb chesz posortowac.");
ile_liczb = Console.readInt("?");
tablica = new int[ile_liczb];
for(i=0; i<ile_liczb; i++) {
tablica[i] = Console.readInt("Wprowadz liczbe #" + (i+1));
}
 
System.out.println("Tablica przed posortowaniem:");
for(i=0; i<ile_liczb; i++)
System.out.println(tablica[i]);
insertionsort(tablica,ile_liczb);
System.out.println("Tablica po posortowaniu:");
for(i=0; i<ile_liczb; i++)
System.out.println(tablica[i]);
}
}