from bottle import Bottle,redirect, run, \
     template, debug, get, route, static_file, request, post

import os, sys, sqlite3, datetime
from baza_metode import DRUGA, TRECA, MOJIPOSTOVI, BRISANJE, KOMENTIRANJE, LAJK, PRIKAZKOMENTARA, NASLOVNICAPOREDAKLAJK, NASLOVNICAPOREDAKKOM, MOJPROFILadd, MOJPROFIL, NASLOVNICA, AZURIRANJE, FILTER
from korisnici import Korisnici

dirname = os.path.dirname(sys.argv[0])

con=sqlite3.connect('data\\drustvenamreza.db')
cur=con.cursor()
id_objave= 0
id_korisnika=0

app = Bottle()
debug(True)

@app.route('/static/<filename:re:.*\.jpg>')
def send_img(filename):
    return static_file(filename, root=dirname+'/static/assets/img')

@app.route('/static/<filename:re:.*\.css>')
def send_css(filename):
    return static_file(filename, root=dirname+'/static/assets/css')

@app.route('/static/<filename:re:.*\.css.map>')
def send_cssmap(filename):
    return static_file(filename, root=dirname+'/static/assets/css')

@app.route('/static/<filename:re:.*\.js>')
def send_js(filename):
    return static_file(filename, root=dirname+'/static/assets/js')

@app.route('/static/<filename:re:.*\.js.map>')
def send_jsmap(filename):
    return static_file(filename, root=dirname+'/static/assets/js')

@app.route('/prikazkomentara<prikazkomentara:re:[0-9]+>')
def prikazkomentara(prikazkomentara):
    idddd=prikazkomentara
    rows=PRIKAZKOMENTARA(idddd)
    return template('prikazkomentara', rows=rows)

@app.route('/filter',method=['GET','POST'])
def filter():

    vrijednost=request.forms.get('inputfilter')
    
    
    rows=FILTER(vrijednost)
    return template('filter',rows=rows)





@app.route('/NaslovnicaPoredakKom')
def naslovnicaPOREDAKKOM():
    rows=NASLOVNICAPOREDAKKOM()
    return template('NaslovnicaPoredakKom',rows=rows)

@app.route('/NaslovnicaPoredakLajk')
def naslovnicaPOREDAKLAJK():
    rows=NASLOVNICAPOREDAKLAJK()
    return template('NaslovnicaPoredakLajk',rows=rows)

@app.route('/mojipostovi',method=['GET','POST'])
def mojipostovi():
    var=druga.korisnik
    data=MOJIPOSTOVI(var)
    return template('mojipostovi',data=data,)
                    
@app.route('/delete<delete:re:[0-9]+>')
def brisanje(delete):
    idd=delete
    BRISANJE(idd)
    redirect('/mojipostovi')

@app.route('/komm<komm:re:[0-9]+>',method='POST')     
def komentiranje2(komm):
    vr=request.forms.get('textkomm')
    iddd=komm
    KOMENTIRANJE(iddd,vr,id_korisnika)
    redirect('/naslovnica')
    
@app.route('/kom<kom:re:[0-9]+>',method='POST')
def komentiranje(kom):
    vrije=request.forms.get('textkom')
    idd=kom
    KOMENTIRANJE(idd,vrije,id_korisnika)
    redirect('/mojipostovi')


@app.route('/azu<azu:re:[0-9]+>',method='POST')
def azuriranje(azu):
    vrijednost=request.forms.get('textazuriraj')
    idd=azu

    AZURIRANJE(vrijednost,idd)

    
    redirect('/mojipostovi')

@app.route('/like<like:re:[0-9]+>')
def lajk(like):
    idd=like
    LAJK(idd)
    redirect('/mojipostovi')
    
@app.route('/likee<likee:re:[0-9]+>')
def lajk2(likee):
    idd=likee
    LAJK(idd)
    redirect('/naslovnica')    
    
@app.route('/treca',method=['GET','POST'])
def treca():
    if request.POST.get('login','').strip():
        ime=request.POST.get('uname')
        sifra=request.POST.get('psw')
        druga.korisnik=TRECA(ime,sifra)
        redirect('/mojProfil')            
    return template('treca')

@app.route('/mojProfil',method=['GET','POST'])
def mojProfil():
    if request.POST.get('submit','').strip():
        post=request.POST.get('subject')
        postdatetime=datetime.datetime.now()
        global brlike
        brlike="0"
        global brkom
        brkom="0"
        var1=druga.korisnik
        global id_objave
        id_objave=MOJPROFIL(var1,post,postdatetime,brlike,brkom)
        redirect('/mojipostovi')
    else:
        
        broj=str(druga.korisnik)
        d=MOJPROFILadd(broj)
        data=list(d)[0]
        return template('mojProfil',data=data)

@app.route('/naslovnica',method=['POST','GET'])
def naslovnica():
    rows=NASLOVNICA()
    return template('naslovnica',rows=rows)

@app.route('/druga',method=['GET','POST'])
def druga():
    if request.POST.get('regist','').strip():
        email=request.POST.get('email')
        password1=request.POST.get('psw')
        password2=request.POST.get('psw-repeat')
        firstname=request.POST.firstname
        lastname=request.POST.lastname
        country=request.POST.get('country')
        dob=request.POST.get('dob')
        yob=request.POST.get('yob')
        por=request.POST.get('por')
        bp=request.POST.get('bp')
        l=request.POST.get('l')
        dl=request.POST.get('dl')
        h=request.POST.get('h')
        e=request.POST.get('e')
        username=request.POST.get('username')
        subject=request.POST.get('subject')
        usernames=cur.execute('SELECT * FROM korisnici')
        lista=[]
        for el in usernames:
            lista.append(el[4])

        if username in lista:
            return template('druga')

        if username=="":
            return template('druga')                
        if password1==password2:
            test=DRUGA(firstname,lastname,email,username,password1,dob,yob,l,dl,h,e,por,bp)
            global id_korisnika
            id_korisnika=test[0]
            druga.korisnik=test[1]
            redirect('/mojProfil')
        else:
            return template('druga')
    else:
        return template('druga')

@app.route('/')
def index():
    global id_objave
    id_objave=0
    global id_korisnika
    id_korisnika=0
    data = {"developer_name": "Ivana",
            "developer_organization": "PMF-informatika"}
    return template('index', data = data)

run(app, host='localhost', port = 4040, debug='True', reloader='True')
