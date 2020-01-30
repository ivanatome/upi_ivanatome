import sqlite3 as lite
import sys



con=lite.connect('data\\drustvenamreza.db')

print("Creating database/table...")
with con:
    cur=con.cursor()
    #DROP TABLE
    cur.execute("DROP TABLE IF EXISTS drustvenamreza")
    #CREATE TABLE
    cur.execute("CREATE TABLE IF NOT EXISTS korisnici (id_k INTEGER PRIMARY KEY AUTOINCREMENT, ime TEXT,prezime TEXT , mail TEXT  ,username TEXT,password TEXT  ,datum_rođenja TEXT, god_rodenja TEXT, sto_voli TEXT, sto_nevoli TEXT,hobi TEXT, edukacija TEXT, mjesto_stanovanja TEXT,mjesto_rodenja TEXT)")
    cur.execute("CREATE TABLE  IF NOT EXISTS objava (id_objave INTEGER PRIMARY KEY AUTOINCREMENT,id_korisnika NUMBER ,sadrzaj_objave TEXT,vrijeme_objavljivanja NUMBER ,broj_lajkova NUMBER ,broj_komentara NUMBER ,FOREIGN KEY (id_korisnika) REFERENCES korisnici (id))")
    cur.execute("CREATE TABLE IF NOT EXISTS komentar (id_komentara INTEGER PRIMARY KEY AUTOINCREMENT,sadrzaj_komentara TEXT,id_objave INTEGER , id_korisnika INTEGER ,FOREIGN KEY(id_objave)REFERENCES objava(id_objave),FOREIGN KEY(id_korisnika)REFERENCES korisnici(id))")
con.close()
print("Database/table created.")
