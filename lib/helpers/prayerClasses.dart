class PrayersClass {
  final List<Prayer> prayersList;
  final Prayer previous;
  final Prayer current;
  final Prayer next;
  final Map countUp;
  final Map countDown;
  final DateTime now;
  final DateTime hijri;
  final double percentage;
  final bool isAfterIsha;

  PrayersClass(
    this.prayersList,
    this.previous,
    this.current,
    this.next,
    this.countUp,
    this.countDown,
    this.now,
    this.hijri,
    this.percentage,
    this.isAfterIsha,
  );
}

class Prayer {
  final DateTime time;
  final int id;
  final bool hasPassed;
  final String name;
  final String when;
  bool isNext;

  Prayer(
    this.time,
    this.id,
    this.hasPassed,
    this.name,
    this.when,
    this.isNext,
  );

  // factory Prayer.db(
  //   DateTime time,
  //   int id,
  //   bool hasPassed,
  //   String name,
  //   String when,
  //   bool isNext,
  // ) {
  //   return Prayer(
  //     time: time,
  //     id: id,
  //     hasPassed: hasPassed,
  //     name: name,
  //     when: when,
  //     isNext: isNext,
  //   );
  // }
}

class Strings {
  final String now;
  final String date;
  final String hijri;
  final String hijriMonth;
  final String countdownName;
  final String countdownTime;
  final String countupName;
  final String countupNameFrom;
  final String countupTime;
  final List<String> prayers;
  final String current;
  final String updated;
  final String midnight;
  final String lastThird;

  Strings({
    this.now,
    this.date,
    this.hijri,
    this.hijriMonth,
    this.countdownName,
    this.countdownTime,
    this.countupName,
    this.countupNameFrom,
    this.countupTime,
    this.prayers,
    this.current,
    this.updated,
    this.midnight,
    this.lastThird,
  });
}
