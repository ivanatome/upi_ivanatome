import sqlite3
import os, sys

dirname=os.path.dirname(sys.argv[0])
sys.path.append(dirname.replace('\\','/') + '/entiteti')

from komentar import Komentar
from korisnici import Korisnici
from objava import Objava


def DRUGA(firstname,lastname,email,username,password1,dob,yob,l,dl,h,e,por,bp):
    con=sqlite3.connect('data\\drustvenamreza.db')
    
    try:
        cur=con.cursor()
        cur.execute('INSERT INTO korisnici VALUES (null,?,?,?,?,?,?,?,?,?,?,?,?,?)',(firstname,lastname,email,username,password1,dob,yob,l,dl,h,e,por,bp))
        con.commit()

        rows=cur.execute('SELECT * FROM korisnici')
        print(rows)
        for row in rows:
            if row[4]==username:
                global id_korisnika
                id_korisnika=row[0]
                nekako_drukcije=row[0]

        con.commit()

        
    except Exception as e:
        print("Greška ",e)
        con.rollback

    return (id_korisnika, nekako_drukcije)

def FILTER(vrijednost):

    con=sqlite3.connect('data\\drustvenamreza.db')
    cur=con.cursor()
    

    rows=cur.execute('SELECT * from objava WHERE sadrzaj_objave LIKE ?',("%"+vrijednost+"%",)).fetchall()
    

    

    
    
    print(str(rows))
    return rows


def TRECA(ime,sifra):
    con=sqlite3.connect('data\\drustvenamreza.db')
    cur=con.cursor()
    try:
        v=cur.execute('SELECT username, password, id_k FROM korisnici WHERE username=(?) AND password=(?)',(ime,sifra,))
        v=cur.fetchone()
        if v==None:
            return template('treca')  
        else:
            currently_id=v[2]
            rows=cur.execute('SELECT * FROM korisnici')        
            for row in rows:
                if row[0]==currently_id:
                    print("CURRENTLY ID" + str(currently_id))
                    nekako_drukcije=row[0]
    except Exception as e:
        print("Greška ",e)
        con.rollback
    return(nekako_drukcije)

def MOJIPOSTOVI(var):
    con=sqlite3.connect('data\\drustvenamreza.db')
    cur=con.cursor()

    data=cur.execute('SELECT * FROM objava WHERE id_korisnika=(?)',(var,))
    

    return data

def BRISANJE(idd):
    con=sqlite3.connect('data\\drustvenamreza.db')
    cur=con.cursor()

    cur.execute('DELETE FROM objava WHERE id_objave=(?)',(idd,))
    cur.execute('DELETE FROM komentar WHERE id_objave=(?)',(idd,))
    con.commit()
    

def AZURIRANJE(vrijednost,idd):
    con=sqlite3.connect('data\\drustvenamreza.db')
    cur=con.cursor()

    cur.execute('UPDATE objava SET sadrzaj_objave=(?) WHERE id_objave=(?)',(vrijednost,idd,))
    con.commit()
    
    
def KOMENTIRANJE(idd,vrije,id_korisnika):
    con=sqlite3.connect('data\\drustvenamreza.db')
    cur=con.cursor()

    cur.execute('INSERT INTO komentar VALUES(null,?,?,?)',(vrije,idd,id_korisnika))
    con.commit()
    nesto=cur.execute('SELECT count(*) from komentar WHERE id_objave=(?)',(idd,)).fetchone()
    nesto=str(nesto)
    nesto=nesto[1:-2]
    cur.execute('UPDATE objava SET broj_komentara = ? WHERE id_objave = ?',(nesto,idd,))
    con.commit()
    

def LAJK(idd):
    con=sqlite3.connect('data\\drustvenamreza.db')
    cur=con.cursor()

    cur.execute('SELECT * FROM objava WHERE id_objave=(?)',(idd,))
    obj=cur.fetchone()[0] #ID OBJAVE
    
    cur.execute('SELECT * FROM objava WHERE id_objave=(?)',(idd,))
    aa=int(cur.fetchone()[4])+1
    
    bb=str(aa)
    
    cur.execute('UPDATE objava SET broj_lajkova = (?) WHERE id_objave=(?)',(bb,obj,))
    con.commit()
    

def PRIKAZKOMENTARA(idddd):
    con=sqlite3.connect('data\\drustvenamreza.db')
    cur=con.cursor()

    rows=cur.execute('SELECT * FROM komentar WHERE id_objave=(?)',(idddd,)).fetchall()
    

    return rows

def NASLOVNICAPOREDAKKOM():
    con=sqlite3.connect('data\\drustvenamreza.db')
    cur=con.cursor()

    rows=cur.execute('SELECT korisnici.username, objava.sadrzaj_objave, objava.id_objave,objava.broj_lajkova, objava.broj_komentara FROM korisnici INNER JOIN objava on objava.id_korisnika=korisnici.id_k ORDER BY objava.broj_komentara desc')
    
    return rows

def NASLOVNICAPOREDAKLAJK():
    con=sqlite3.connect('data\\drustvenamreza.db')
    cur=con.cursor()

    rows=cur.execute('SELECT korisnici.username, objava.sadrzaj_objave, objava.id_objave,objava.broj_lajkova, objava.broj_komentara FROM korisnici INNER JOIN objava on objava.id_korisnika=korisnici.id_k ORDER BY objava.broj_lajkova desc')
    
    return rows




def MOJPROFIL(var1,post,postdatetime,brlike,brkom):
    con=sqlite3.connect('data\\drustvenamreza.db')
    cur=con.cursor()

    

    cur.execute('INSERT INTO objava VALUES(null,?,?,?,?,?)',(var1,post,postdatetime,brlike,brkom))
    con.commit()
    objava=cur.execute('SELECT * FROM objava')
    for o in objava:
        global id_objave
            
           
        id_objave=o[0]
    con.commit()
    

    return id_objave

def MOJPROFILadd(broj):
    con=sqlite3.connect('data\\drustvenamreza.db')
    cur=con.cursor()

    d=cur.execute('SELECT ime,prezime,mail,username,datum_rođenja,god_rodenja,sto_voli,sto_nevoli,hobi,edukacija,mjesto_stanovanja,mjesto_rodenja FROM korisnici where id_k=(?)',(broj,))
    
    return d

def NASLOVNICA():
    con=sqlite3.connect('data\\drustvenamreza.db')
    cur=con.cursor()

    r=cur.execute('SELECT korisnici.username, objava.sadrzaj_objave, objava.id_objave,objava.broj_lajkova, objava.broj_komentara FROM korisnici INNER JOIN objava on objava.id_korisnika=korisnici.id_k')
    
    return r

    


        
         
    

        
                

        
        

    
        
        
