class CodeData {
  List<String> codes = [];

  CodeData() {

    for (var i = 1; i <= 999; i++) {
      codes.add("SNIS-" + i.toString().padLeft(3, '0'));
      codes.add("IPZ-" + i.toString().padLeft(3, '0'));
      codes.add("STAR-" + i.toString().padLeft(3, '0'));
      codes.add("JUY-" + i.toString().padLeft(3, '0'));
    }
    for (var i = 1; i <= 717; i++)
      codes.add("MIDE-" + i.toString().padLeft(3, '0'));

    for (var i = 1; i <= 100; i++)
      codes.add("STARS-" + i.toString().padLeft(3, '0'));

    for (var i = 1; i <= 607; i++)
      codes.add("DASD-" + i.toString().padLeft(3, '0'));

    for (var i = 1; i <= 113; i++)
      codes.add("SDAB-" + i.toString().padLeft(3, '0'));

    for (var i = 1; i <= 432; i++)
      codes.add("DVAJ-" + i.toString().padLeft(3, '0'));

    for (var i = 1; i <= 200; i++)
      codes.add("MIAA-" + i.toString().padLeft(3, '0'));

    for (var i = 1; i <= 309; i++)
      codes.add("MKMP-" + i.toString().padLeft(3, '0'));

    for (var i = 1; i <= 760; i++)
      codes.add("HND-" + i.toString().padLeft(3, '0'));

    for (var i = 1; i <= 726; i++)
      codes.add("EBOD-" + i.toString().padLeft(3, '0'));

    for (var i = 1; i <= 277; i++)
      codes.add("SQTE-" + i.toString().padLeft(3, '0'));

    for (var i = 1; i <= 408; i++)
      codes.add("IPX-" + i.toString().padLeft(3, '0'));

    for (var i = 1; i <= 226; i++)
      codes.add("OFJE-" + i.toString().padLeft(3, '0'));

    for (var i = 1; i <= 358; i++)
      codes.add("MIAE-" + i.toString().padLeft(3, '0'));

    for (var i = 1; i <= 194; i++)
      codes.add("OAE-" + i.toString().padLeft(3, '0'));

    for (var i = 1; i <= 514; i++)
      codes.add("XVSR-" + i.toString().padLeft(3, '0'));

    for (var i = 1; i <= 915; i++)
      codes.add("WANZ-" + i.toString().padLeft(3, '0'));

  }

}
