import unittest
from korisnici import Korisnici

import os, sys, sqlite3, datetime
from baza_metode import DRUGA, TRECA, MOJIPOSTOVI, BRISANJE, KOMENTIRANJE, LAJK, PRIKAZKOMENTARA, NASLOVNICAPOREDAKLAJK, NASLOVNICAPOREDAKKOM, MOJPROFILadd, MOJPROFIL, NASLOVNICA, AZURIRANJE, FILTER
from korisnici import Korisnici

dirname = os.path.dirname(sys.argv[0])

con=sqlite3.connect('data\\drustvenamreza.db')
cur=con.cursor()


class TestKorisnici(unittest.TestCase):

    def test_init_value_error_brojznakova(self):
        #username ima manje od 5 znakova
        with self.assertRaises(ValueError):#5.misto
            Korisnici("","","","","abc","","","","","","","","")
            
    def test_init_value_error_znakmail(self):
        #neispravan mail, mora imat znak @
        with self.assertRaises(ValueError):
            Korisnici("","","","tm@","abc","","","","","","","","")

    def test_init_value_error_kratkalozinka(self):
        #lozinka kraca od 4 znaka
        with self.assertRaises(ValueError):
            Korisnici("","","","","","955","","","","","","","")

    def test_baza_komentar(self):
        KOMENTIRANJE(1002,"nekikomentar",502)

        con=sqlite3.connect('data\\drustvenamreza.db')
        cur=con.cursor()

        idd=cur.execute('SELECT * FROM sqlite_sequence').fetchall()
        
        seq=idd[2][1]
        print("SEKVENCA ",seq)
        row=cur.execute('SELECT * FROM komentar WHERE id_komentara=(?)',(seq,)).fetchone()
        print(row)
        self.assertEqual(row,(seq,'nekikomentar', 1002, 502))
        
        
        cur.execute('DELETE FROM komentar WHERE id_komentara=(?)',(seq,))
        con.commit()

    
    def test_baza_objava(self):
        idObjave=MOJPROFIL(500,"objava","20:45h",5,11)

        con=sqlite3.connect('data\\drustvenamreza.db')
        cur=con.cursor()

        v=cur.execute('SELECT * from objava where id_objave=(?)',(idObjave,)).fetchone()
        self.assertEqual(v,(idObjave, 500, 'objava', '20:45h', 5, 11))

        con=sqlite3.connect('data\\drustvenamreza.db')
        cur=con.cursor()
        cur.execute('DELETE from objava WHERE id_objave=(?)',(idObjave,))
        con.commit()

unittest.main()



