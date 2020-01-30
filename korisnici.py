class Korisnici(object):

    def __init__(id_k,ime,prezime,mail,username,password,datum_rođenja,god_rodenja,sto_voli,sto_nevoli,hobi,edukacija,mjesto_stanovanja,mjesto_rodenja):
        #idsekvenca,      firstname,lastname,email,username,password1,dob,  yob,         l,       dl,        h,    e,           por,            bp
        #self._id=id
        
        #mail mora imat znak @
        if "@" not in mail:
            raise ValueError("neispravan unos maila")
        
        # za testiranje, username ne smi bit kraci od 5 znakova
        if len(username)<5:            
            raise ValueError("username mora sadržavati minimalno 5 znakova")
        
        #password mora imat 4 znaka
        if len(password)<4:
            raise ValueError("password prekratak")

        Korisnici._id_k=id_k
        Korisnici._ime=ime
        Korisnici._prezime=prezime
        Korisnici._mail=mail
        Korisnici._username=username
        Korisnici._password=password
        Korisnici._datum_rođenja=datum_rođenja
        Korisnici._god_rodenja=god_rodenja
        Korisnici._sto_voli=sto_voli
        Korisnici._sto_nevoli=sto_nevoli
        Korisnici._hobi=hobi
        Korisnici._edukacija=edukacija
        Korisnici._mjesto_stanovanja=mjesto_stanovanja
        Korisnici._mjesto_rodenja=mjesto_rodenja
        

##    @property
##    def id(self):
##        return self._id

    @property
    def id_k(self):
        return Korisnici._id_k

    @property
    def ime(self):
        return Korisnici._ime

    @property
    def prezime(self):
        return Korisnici._prezime

    @property
    def mail(self):
        return Korisnici._mail

    @property
    def username(self):
        return Korisnici._username

    @property
    def password(self):
        return Korisnici._password

    @property
    def datum_rođenja(self):
        return Korisnici._datum_rođenja

    @property
    def god_rodenja(self):
        return Korisnici._god_rodenja

    @property
    def sto_voli(self):
        return Korisnici._sto_voli

    @property
    def sto_nevoli(self):
        return Korisnici._sto_nevoli

    @property
    def hobi(self):
        return Korisnici._hobi

    @property
    def edukacija(self):
        return Korisnici._edukacija

    @property
    def mjesto_stanovanja(self):
        return Korisnici._mjesto_stanovanja

    @property
    def mjesto_rodenja(self):
        return Korisnici._mjesto_rodenja


    
