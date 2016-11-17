PROGRAM GAME;
USES CRT;
VAR X,Y,C,ILOSC:INTEGER;
ODP:CHAR;
KONIEC:BOOLEAN;
BEGIN
writeln('GRA');
REPEAT;
    CLRSCR;
        RANDOMIZE;
    X:=(RANDOM(C));
        writeln('Wpisz z ilu liczb ba losowac?');
        readln(C);
    TEXTCOLOR(2);
    GOTOXY(30,5);
    WRITELN(' TO JEST GRA ');
    REPEAT
    TEXTCOLOR(8);
    WRITE(' PODAJ WARTOÆ LICZBY');
    READLN(Y);
    ILOSC:=ILOSC+1;
    TEXTCOLOR(3);
    IF (X<Y) THEN WRITELN('TA GRA CI PRZERASTA-liczba za duza ');
    TEXTCOLOR(5);
    IF (X>Y) THEN WRITELN('NIGDY NIE ZGADNIESZ-LICZBA za mala');
    TEXTCOLOR(6);
    IF (X=Y) THEN WRITELN('CHYBA KTOs CI POMAGA ?');
    UNTIL X=Y;
    WRITELN('ZGADYWA£E ',ILOSC,' RAZY');
    WRITE('Czy zagrasz jeszcze raz? (Y/N)');
    READLN(ODP);
    KONIEC:=NOT ((ODP='y') OR (ODP='Y'));
    UNTIL KONIEC;
END.
