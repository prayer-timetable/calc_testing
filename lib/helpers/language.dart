List<String> namesPrayer = [
  'sabah',
  'izlazak sunca',
  'podne',
  'ikindija',
  'akšam',
  'jacija'
];
List<String> namesPrayerFrom = [
  'sabaha',
  'svitanja',
  'podneva',
  'ikindije',
  'akšama',
  'jacije'
];

List<String> namesHeading = [
  'Namaz',
  'Ezan',
];

List<String> namesSunnah = [
  'Sredina noći',
  'Zadnja trećina',
];

List<String> whenText = ['danas', 'sutra'];

List<String> namesRel = ['za', 'od', 'trenutno'];

List<String> namesHijri = [
  'Muharrem',
  'Safer',
  'Rebiul-evvel',
  'Rebiul-ahir',
  'Džumadel-ula',
  'Džumadel-uhra',
  'Redžeb',
  'Ša\'ban',
  'Ramazan',
  'Ševval',
  'Zul-ka\'de',
  'Zul-hidždže',
];

List<String> compassDials = [
  'S',
  'SI',
  'I',
  'JI',
  'J',
  'JZ',
  'Z',
  'SZ',
];

List<String> namesScreen = [
  'Ekran će ostati upaljen',
  'Ekran će se gasiti po svom redovnom rasporedu'
];

Map<String, String> messages = {
  'locationDefault': 'Koristimo Sarajevo kao lokaciju',
  'locationAllowed': 'Dozvoljen pristup lokaciji.',
  'locationDenied': 'Zabranjen pristup lokaciji.',
  'locationOff': 'Servis lokacije nije uključen.',
};

// List<String> aboutText = [
//   'Vakat',
//   ' je aplikacija sa namaskim vaktovima (vremenima) za čitavu BiH i šire - jednostavna aplikacija bez reklama, samo sa vrlo korisnom informacijom.\n',
//   '\nAplikacija uključuje namaske vaktove za većinu gradova u BiH, uključujući i Sandžak. Tačna vremena su, uz dozvolu, preuzeta sa vaktija.ba sajta. Molimo sjetite se nas i naših porodica u svojim dovama!\n',
//   '\nNeke od mogućnosti:\n',
//   '\n- Odbrojavanje do sljedećeg namaza (veoma korisno kad se posti)\n',
//   '\n- Ezan napomene: audio-vizuelne (na tihim postavkama samo vizuelne)\n',
//   '\n- Kibla kompas: pokazuje pravac u kome se klanja\n',
//   '\n- Non-stop ekran: ekran (opcionalno) ostaje uključen, da biste lakše pratili namaska vremena.',
// ];

List<String> namesTitle = ['Info', 'Metod'];

String aboutText = '''
# Aplikacija
Neka je hvala Allahu, Gospodaru svih svjetova i neka je salavat i selam na Božijeg miljenika, našeg Poslanika Muhammeda (savs), njegovu porodicu i ashabe, kao i sve one koji ga slijede na uputi do Sudnjega Dana.

**Vakat** je aplikacija sa namaskim vaktovima (vremenima) za čitavu BiH i šire - jednostavna aplikacija bez reklama, samo sa vrlo korisnom informacijom.

Aplikacija uključuje namaske vaktove za većinu gradova u BiH, uključujući i Sandžak. Molimo sjetite se nas i naših porodica u svojim dovama!

Neke od mogućnosti:

- Odbrojavanje do sljedećeg namaza (veoma korisno kad se posti),
- Kibla kompas: pokazuje pravac u kome se klanja,
- Non-stop ekran: ekran (opcionalno) ostaje uključen, da biste lakše pratili namaska vremena,
- Ezan napomene: audio-vizuelne (na tihim postavkama samo vizuelne) - u pripremi.
''';

String methodText = '''
Aplikacija koristi dva različita pristupa u prikazivanju namaskog vremena: Takvim i matematička kalkulacija.

## Takvim

Glavni prikaz namaskih vremena je baziran na tabelama (Takvimu)  Islamske Zajednice (IZ) Bosne i Hercegovine. Tačna vremena su, uz dozvolu, preuzeta sa [vaktija.ba](https://vaktija.ba "Vaktija.ba") sajta. Neka im Allah podari svako dobro.


## Matematička kalkulacija

Alternativno, možete koristiti metod kalkulacije prihvaćen od jednog dijela džemata koji koristi ugao od 14.6 stepeni za računanje nastupa sabaha (zore) i jacije (mraka). Glavni razlog takvog mišljenja je navodna nepouzdanost metoda korištenog u Takvimu. Da bismo bolje objasnili ovu problematiku, prvo pogledajmo šta pojedini termini znače.

### Ugao Sunca i sumrak

Ugao između Sunca  i horizonta ([Solar zenith angle](https://en.wikipedia.org/wiki/Solar_zenith_angle)) je glavni faktor koji odlučuje nastupanje zore ili pojavu mraka. Taj ugao u potpunosti zavisi od mjesta u kome se nalazimo, ili preciznije govoreći, od naših  koordinata na planeti Zemlji.

Pred-zora ili lažna zora - *subh kaadhib* - je pojava male svjetlosti na istočnom horizontu koja nakon kratkog vremena u potpunosti nestane. Zatim, nakon  određenog vremena, nastupiće i prava zora pojavom drugog (laterarnog) bjelila, koje će se raširiti punim istočnim horizontom.

Sabah (zora) nastupa kada se jutarnje svjetlo (bijela nit dana) može primjetiti na istočnom horizontu i potpuno razlikovati od mračnog neba (crna nit noći). Ovu pojavu nazivamo prava zora ili *subh saadiq*. Islamska ulema je jednoglasna u ovom pogledu: to je vrijeme kada sabah-vakat počinje.

### Gdje je onda problem?

Problem je u određivanju ugla pod kojim Sunce prilazi, jer na različitim dužinama i širinama taj ugao je različit. Postoji više konvencija (dogovora) kako taj ugao odrediti i za koje zemlje. Najpoznatije konvencije su (sa sabahskim i jacijskim uglovima):

- **University of Islamic Sciences, Karachi**
Uglovi:  18°, 18°, zemlje: Pakistan, Bangladeš, dijelovi Indije, Avganistan;
- **Islamic Society of North America (ISNA)**
Uglovi: 15°, 15°; zemlje: SAD, Kanada, Velika Britanija, većina Evrope;
- **World Islamic League**
Uglovi: 18°, 17°; zemlje: dijelovi Evrope, dio Dalekog Istoka;
- **Egyptian General Organization of Surveying**
Uglovi: 19.5°, 17.5°; dio Afrike, Sirija, Irak, Liban, Malezija

### Metodologija

Za računanje vremena koristimo metodu objavljenu i priznatu u naučnim [krugovime](https://www.academia.edu/35801795/Prayer_Time_Algorithm_for_Software_Development). Za računanje su nam potrebne geografska dužina i širina, već pomenuti ugao deklinacije Sunca, nadmorska visina, kao i jednačina vremena (EqT - Equation of Time) bazirana na uglu godine (Year Angle). Formule su dostupne na gornjem linku i potpuno su implementirane u ovu aplikaciju koja koristi Dart programski jezik.

### Provjera aplikacije

Da provjerimo valjanost našeg metoda računanja, uzećemo par datuma u 2021. godini. 2020. godina je prestupna godina i sva vremena poslije 29. februara se pomjeraju za jedan dan, što nije najprecizniji metod i dodaje na netačnost vremena u postojećem Takvimu. Radi tačnosti poređenja, promijenićemo ugao metoda koji se inače koristi u aplikaciji (14.6°) . Kod nas se, po svoj prilici, koriste uglovi od 19° i 17° za sabah i jaciju. To će rezultirati da vremena sabaha i jacije veoma približno odgovaraju takvimskim vremenima.

- **29. mart 2021.**
**Naša aplikacija**:
*sabah*: 4:49,
*izlazak sunca*: 6:29,
*podne*: 12:51,
*ikindija*: 16:23,
*akšam*: 19:14,
*jacija*: 20:42;
**Takvimska [vremena](https://api.vaktija.ba/vaktija/v1/77/2021/3/29)**:
*sabah*: 4:48,
*izlazak sunca*: 6:29,
*podne*: 12:52,
*ikindija*: 16:23,
*akšam*: 19:15,
*jacija*: 20:42.

- **30. novembar 2021.**
**Naša aplikacija**:
*sabah*: 5:12,
*izlazak sunca*: 6:55,
*podne*: 11:36,
*ikindija*: 13:52,
*akšam*: 16:16,
*jacija*: 17:48;
**Takvimska [vremena](https://api.vaktija.ba/vaktija/v1/77/2021/11/30)**:
*sabah*: 5:11,
*izlazak sunca*: 6:53,
*podne*: 11:36,
*ikindija*: 13:51,
*akšam*: 16:17,
*jacija*: 17:48.

Iz gornjeg možemo zaključiti da postoje indikacije da se naša metodologija računanja poprilično poklapa sa postojećom takvimskom. Razlika je minimalna. Ali napominjemo, alternativna metoda korištena u aplikaciji koristi ugao od 14.6° za sabah i jaciju, tako da se ta dva namaska vremena razlikuju od istih u Takvimu, dok ostala namaska vremena (podne, ikindija, akšam), uključujući i izlazak sunca - su približno ista kao i u Takvimu.

---

*Sve ovo iznosimo iz najboljih namjera, bez pokušaja diskreditacije bilo kojeg pojedinca ili institucije. A, kao i uvijek, Allah najbolje zna.*''';
