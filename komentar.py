class Komentar():

    def __init__(self,id,id_komentara,sadrzaj_komentara,id_objave,id_korisnika):
        self._id=id
        self._id_komentara=id_komentara
        self._sadrzaj_komentara=sadrzaj_komentara
        self._id_objave=id_objave
        self._id_korisnika=id_korisnika

    @property
    def id(self):
        return self._id

    @property
    def id_komentara(self):
        return self._id_komentara

    @property
    def sadrzaj_komentara(self):
        return self._sadrzaj_komentara

    @property
    def id_objave(self):
        return self._id_objave

    @property
    def id_korisnika(self):
        return self._id_korisnika

    def __str__(self):
        return """
        id: {0}
        id_komentara: {1}
        sadrzaj_komentara: {2}
        id_objave: {3}
        id_korisnika: {4}

        --------------------------
        """.format(self._id,self._id_komentara,self._sadrzaj_komentara,self._id_objave,self._id_korisnika)

    
