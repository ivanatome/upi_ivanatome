class Objava():

    def __init__(self,id,id_objave,id_korisnika,sadrzaj_objave,vrijeme_objavljivanja,broj_lajkova,broj_komentara):
        self._id=id
        self._id_objave=id_objave
        self._id_korisnika=id_korisnika
        self._sadrzaj_objave=sadrzaj_objave
        self._vrijeme_objavljivanja=vrijeme_objavljivanja
        self._broj_lajkova=broj_lajkova
        self._broj_komentara=broj_komentara

    @property
    def id(self):
        return self._id

    @property
    def id_objave(self):
        return self._id_objave

    @property
    def id_korisnika(self):
        return self._id_korisnika

    @property
    def sadrzaj_objave(self):
        return self._sadrzaj_objave

    @property
    def vrijeme_objavljivanja(self):
        return self._vrijeme_objavljivanja

    @property
    def broj_lajkova(self):
        return self._broj_lajkova


    @property
    def broj_komentara(self):
        return self._broj_komentara


    

    
