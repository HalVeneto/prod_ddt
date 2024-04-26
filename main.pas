unit main;

{$mode objfpc}{$H+}

{Lazarus 2.0.12; fpc 3.0.4}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, DBCtrls, Buttons,
  StdCtrls, ComCtrls, BCPanel, BGRAResizeSpeedButton, BCListBox,
  BCMaterialDesignButton, BCButton, BCRadialProgressBar, RLPDFFilter, ZDataset,
  rxdbdateedit, rxdbgrid, rxmemds, rxtooledit, RxVersInfo, LCLType, units, dm,
  helps, DBGrids, DBExtCtrls, ExtCtrls, ShellAPI, LR_Class, LR_DBSet, LR_DSet,
  LR_Desgn, LR_View, Types;

type

  { TFmain }

  TFmain = class(TForm)
    Bcanc: TSpeedButton;
    BcancRiga: TSpeedButton;
    BcancAss1: TBCButton;
    BcercaAllegMacc: TBCButton;
    BcercaAllegMacc1: TBCButton;
    BcercaDest: TBCButton;
    BcercaDest1: TBCButton;
    BcodMacc: TBCButton;
    BcodMacc1: TBCButton;
    BmodRiga: TSpeedButton;
    BnewRiga: TSpeedButton;
    BstDdt: TBCButton;
    dbNavRiga: TDBNavigator;
    dsRst: TDataSource;
    EcodDstnz: TDBEdit;
    frDsRst: TfrDBDataSet;
    frDdt: TfrReport;
    rgTipoDestinat: TDBRadioGroup;
    dbtR: TDBText;
    dbtRiga: TDBText;
    dgRes1: TRxDBGrid;
    Eart: TDBEdit;
    Enc: TDBEdit;
    Eum: TDBEdit;
    Edis: TDBEdit;
    Ecomm: TDBEdit;
    Eqta: TDBEdit;
    LdesCaus: TLabel;
    LcodArt: TLabel;
    Ldes: TLabel;
    Lnote: TLabel;
    Ldis: TLabel;
    Lcomm: TLabel;
    Lnc: TLabel;
    Lum: TLabel;
    Lqta: TLabel;
    Mdes: TDBMemo;
    Mdes1: TDBMemo;
    pNavRiga: TBCPanel;
    pRighe: TBCPanel;
    BinfoMP1: TBCButton;
    BinfoMP3: TBCButton;
    Bmod: TSpeedButton;
    Bnew: TSpeedButton;
    BrunMan: TBCButton;
    BstampaScad: TBCButton;
    dbNav: TDBNavigator;
    dbtProgr: TDBText;
    dgRes: TRxDBGrid;
    dsDocs: TDataSource;
    Eal: TRxDateEdit;
    Easp: TDBEdit;
    Ecaus: TDBEdit;
    EccResFlt: TEdit;
    EcodDest: TDBEdit;
    EcodVett: TDBEdit;
    Ecolli: TDBEdit;
    Edal: TRxDateEdit;
    Edata: TRxDBDateEdit;
    EdataIni: TRxDBDateEdit;
    EdesDest: TDBEdit;
    EdesDstnz: TDBEdit;
    EdesVett: TDBEdit;
    EdesManFlt: TEdit;
    EindDest: TDBEdit;
    EindDstnz: TDBEdit;
    EindVett: TDBEdit;
    ElocDest: TDBEdit;
    ElocDstnz: TDBEdit;
    ElocVett: TDBEdit;
    EmaccResFlt: TEdit;
    EnazDest: TDBEdit;
    EnazDstnz: TDBEdit;
    Eser: TDBComboBox;
    gbDest: TGroupBox;
    gbDstnaz: TGroupBox;
    gbVett: TGroupBox;
    gbPorto: TDBRadioGroup;
    gbTesta: TGroupBox;
    gbTraspDi: TDBRadioGroup;
    Lal: TLabel;
    Lasp: TLabel;
    Lcaus: TLabel;
    Lcc: TLabel;
    LcodDest: TLabel;
    LcodDstnz: TLabel;
    LcodDstnz1: TLabel;
    Lcod_macc: TLabel;
    Lcolli: TLabel;
    Ldal: TLabel;
    Ldata: TLabel;
    LdataIni: TLabel;
    Ldes1: TLabel;
    LdesDest: TLabel;
    LdesDstnz: TLabel;
    LdesDstnz1: TLabel;
    Lhelp2: TLabel;
    LindDest: TLabel;
    LindDstnz: TLabel;
    LindDstnz1: TLabel;
    LlocDest: TLabel;
    LlocDstnz: TLabel;
    LlocDstnz1: TLabel;
    LnazDest: TLabel;
    LnazDstnz: TLabel;
    LnoteMacc: TLabel;
    Lprogr: TLabel;
    Lserie: TLabel;
    Lvers1: TLabel;
    Enote: TDBMemo;
    dsSt: TDataSource;
    dsZq: TDataSource;
    dsEl: TDataSource;
    frDsSt: TfrDBDataSet;
    PageControl: TPageControl;
    pTesta: TBCPanel;
    pMan1: TBCPanel;
    pNavTesta: TBCPanel;
    pRiga: TBCPanel;
    pTitMan: TBCPanel;
    qDocs: TZQuery;
    qDocscod: TStringField;
    qDocsdescr: TStringField;
    qDocsfinoal: TDateField;
    qDocsluogo: TStringField;
    qDocsr: TLargeintField;
    qDocsriserv: TLongintField;
    qDocstipo: TStringField;
    qDocstipofile: TStringField;
    rgTipo: TRadioGroup;
    rgTipoDestinaz: TDBRadioGroup;
    Telart: TStringField;
    Telasp: TStringField;
    Telcaus: TStringField;
    TelcCod: TLongintField;
    Trst: TRxMemoryData;
    Trstcod: TLongintField;
    Trstqta: TFloatField;
    Trstum: TStringField;
    Tstcaus: TStringField;
    TstCod: TLongintField;
    TstData: TDateField;
    Telcod: TLongintField;
    Telcod_1: TLongintField;
    Telcolli: TLongintField;
    Telcomm: TLongintField;
    StringField1: TStringField;
    Teld1: TDateField;
    Teld2: TDateField;
    Teldata: TDateField;
    Teldataini: TDateField;
    Teldes: TMemoField;
    Teldestcod: TStringField;
    Teldestdes: TStringField;
    Teldestind: TStringField;
    Teldestloc: TStringField;
    Teldestnaz: TStringField;
    Teldestpiva: TStringField;
    Teldis: TStringField;
    Teldstnzcod: TStringField;
    Teldstnzdes: TStringField;
    Teldstnzind: TStringField;
    Teldstnzloc: TStringField;
    Teldstnznaz: TStringField;
    Teldstnzpiva: TStringField;
    Telf1: TFloatField;
    Telf1_1: TFloatField;
    Telf2: TFloatField;
    Telf2_1: TFloatField;
    Telf3: TFloatField;
    Telf3_1: TFloatField;
    Teli1: TLongintField;
    Teli1_1: TLongintField;
    Teli2: TLongintField;
    Teli2_1: TLongintField;
    Teli3: TLongintField;
    Teli3_1: TLongintField;
    Telnote: TMemoField;
    Telnote_1: TMemoField;
    Telporto: TStringField;
    Telprz: TFloatField;
    Telqta: TFloatField;
    Telr: TLongintField;
    Telriga: TLongintField;
    Tels1: TStringField;
    Tels1_1: TStringField;
    Tels2: TStringField;
    Tels2_1: TStringField;
    Tels3: TStringField;
    Tels3_1: TStringField;
    Telserie: TStringField;
    Telserie_1: TStringField;
    Telt1: TMemoField;
    Telt1_1: TMemoField;
    Teltrasp: TStringField;
    Telum: TStringField;
    Telvettcod: TStringField;
    Telvettdes: TStringField;
    Telvettind: TStringField;
    Telvettloc: TStringField;
    Telvettnaz: TStringField;
    Timer: TTimer;
    Tst: TRxMemoryData;
    TstdestDes: TStringField;
    TstdestInd: TStringField;
    TstdestLoc: TStringField;
    TstdestNaz: TStringField;
    TstdstnzDes: TStringField;
    TstdstnzInd: TStringField;
    TstdstnzLoc: TStringField;
    TstdstnzNaz: TStringField;
    Tstnote: TMemoField;
    tsEl: TTabSheet;
    tsGest: TTabSheet;
    Tstporto: TStringField;
    Tsttrasp: TStringField;
    zq: TZQuery;
    Tel: TZQuery;
    procedure BcancClick(Sender: TObject);
    procedure BcancRigaClick(Sender: TObject);
    procedure BcercaDestClick(Sender: TObject);
    procedure BdesManClick(Sender: TObject);
    procedure BmodClick(Sender: TObject);
    procedure BmodRigaClick(Sender: TObject);
    procedure BnewClick(Sender: TObject);
    procedure BnewRigaClick(Sender: TObject);
    procedure BstDdtClick(Sender: TObject);
    procedure dbNavClick(Sender: TObject; Button: TDBNavButtonType);
    procedure EartExit(Sender: TObject);
    procedure EartKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EcausExit(Sender: TObject);
    procedure EcausKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EcodDestExit(Sender: TObject);
    procedure EcodDestKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure EcodDstnzExit(Sender: TObject);
    procedure EcodDstnzKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EcodDstnzKeyPress(Sender: TObject; var Key: char);
    procedure EcodVettExit(Sender: TObject);
    procedure EcodVettKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure EcommExit(Sender: TObject);
    procedure EdisExit(Sender: TObject);
    procedure EdisKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EnoteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControlChange(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private

  public

  end;

var
  Fmain: TFmain;

implementation

uses
  Variants, ComObj,
  ZAbstractRODataset; //per Teleff.SortType:=stDescending

{$R *.lfm}

const
  {$I versione.include.pas}
  _prd:word=365; //180; //periodo da considerare

{ TFmain }

procedure ampiezzaColMacc();
begin
  with Fmain do begin
    (*dbgMacc.ColumnByFieldName('cod').Width:=110;
    dbgMacc.ColumnByFieldName('des').Width:=600;
    dbgMacc.ColumnByFieldName('cc').Width:=70;
    dbgMacc.ColumnByFieldName('considera').Width:=50;
    dbgMacc.ColumnByFieldName('prod_macch').Width:=85;
    dbgMacc.ColumnByFieldName('ordinam').Width:=60;
    dbgMacc.Repaint;
    dbgMacc.Refresh;

    //dbgRic.ColumnByName['cod'].Width:=0;
    //dbgLav.ColumnByName['r'].Width:=0;
    dbgRic.Columns[0].Width:=150;
    dbgRic.Columns[1].Width:=65;
    dbgRic.Columns[2].Width:=50;
    //dbgRic.Repaint;

    dbgLav.Columns[0].Width:=90;
    dbgLav.Columns[1].Width:=170;
    //dbgRic.ColumnByName['scomin'].Width:=65;
    //dbgRic.ColumnByName['giac'].Width:=50;
    dbgRic.Repaint;
    dbgRic.Refresh; *)

  end;
end;

procedure initFields();
var
  s:widestring;
  azz:string;
begin
  with Fmain do begin
    (*LdesCcMacc.Caption:='';
    if fd.TmaccCc.Text<>'' then begin
      s:='select descr from categ where cod='+qs(fd.TmaccCc.Text);
      zgo(zq,s,'op');
      if zq.RecordCount=0 then
        LdesCcMacc.Caption:='???'
      else
        LdesCcMacc.Caption:=vts(zq['descr']);
    end;

    if trim(fd.TmaccCod.Text)='' then
      azz:='§' //azzera grid
    else
      azz:=fd.TmaccCod.Text;

    s:='select cod,r,des,scomin,giac from macch_comp where cod='+qs(azz)+' order by r';
    zgo(fd.TmComp,s,'op');
    dbgRic.Refresh;
    //pbPian.Position:=4;

    s:='select cod,lav from macch_lav where cod='+qs(azz)+' order by lav';
    zgo(fd.Tmlav,s,'op');
    dbgLav.Refresh;
    //pbPian.Position:=3;

    s:='select tipo,cod,r,descr,file as luogo,certif as riserv,d1 as finoal,cat as tipofile';
    agg(s,'from docs');
    agg(s,'where tipo=''M'' and cod='+qs(azz));
    agg(s,'order by r');
    zgo(qDocMacc,s,'op');

    //pulisce campi descrittivi allegato:
    s:='select cod,r,tipo,descr,file as luogo, imm,certif as riserv,d1 as finoal, cat as tipofile';
    agg(s,'from docs limit 0');
    zgo(Talleg,s,'op');

    dbgAllMacc.Refresh;      *)

    if fd.TddtCod.Text<>'' then begin
      fd.Trddt.Close;
      s:='select serie,cod,r,riga,art,dis,comm,des,um,qta,note from rddt where cod='+fd.TddtCod.Text+' order by riga asc,r asc';
      fd.Trddt.SQL.Text:=s;
      fd.Trddt.Open;
    end;

    LdesCaus.Caption:='';
    if fd.TddtCaus.Text<>'' then begin
      //fd.Tcaus.Locate('cod',fd.TddtCaus.Text,[]);
      zgo(zq,'select descr from caus where cod='+qs(fd.TddtCaus.Text),'op');
      if zq.RecordCount>0 then
        LdesCaus.Caption:=vts(zq['descr']);
    end;
  end;
end;

procedure ampiezzaColScad();
begin
  with Fmain do begin
    dgRes.ColumnByFieldName('cod').Width:=100; //cod.machhina
    if cercaParam('debug') then
      dgRes.ColumnByFieldName('reg').Width:=44 //reg. Prod
    else
      dgRes.ColumnByFieldName('reg').Width:=0;
    if rgTipo.ItemIndex=2 then begin //effettuate
      dgRes.ColumnByFieldName('macch').Width:=350;
      dgRes.ColumnByFieldName('des_').Width:=550; //800;
      dgRes.ColumnByFieldName('scadenza').Width:=0; //periodicità (non c'è in  reg. eff.)
      dgRes.ColumnByFieldName('datascad').Width:=0;
      dgRes.ColumnByFieldName('fatto').Width:=0;
      dgRes.ColumnByFieldName('data').Width:=110; //data fatto
      dgRes.ColumnByFieldName('maiEffett').Width:=0;
      dgRes.ColumnByFieldName('forn').Width:=250;
      //dgGg.ColumnByFieldName('cod').Width:=0;
      end
    else
      begin
      dgRes.ColumnByFieldName('macch').Width:=350;
      dgRes.ColumnByFieldName('des_').Width:=800-250;
      dgRes.ColumnByFieldName('scadenza').Width:=140;
      dgRes.ColumnByFieldName('datascad').Width:=110;
      dgRes.ColumnByFieldName('fatto').Width:=0; //70; ma serve?
      dgRes.ColumnByFieldName('data').Width:=0; //data fatto
      dgRes.ColumnByFieldName('maiEffett').Width:=70;
      dgRes.ColumnByFieldName('forn').Width:=0;
      //dgGg.ColumnByFieldName('cod').Width:=0;
    end;
  end;
end;

function sostHtml(h:widestring; dblq:boolean):widestring;
var
  t:widestring;
  x:word;
  c:string[1];
begin
  t:='';
  for x:=1 to length(h) do begin
    c:=h[x]; //copy(h,x,1);
    case c of
      'à':t:=t+'&agrave;';
      'è':t:=t+'&egrave;';
      'ì':t:=t+'&igrave;';
      'ò':t:=t+'&ograve;';
      'ù':t:=t+'&ugrave;';
      'é':t:=t+'&eacute;';
      ',':t:=t+'&comma;'; //la virgola, per un bug del command line di mozilla, interrompe il testo del body
      'â':t:=t+'&acirc;';
      'Ä':t:=t+'&Auml;';
      'ä':t:=t+'&auml;';
      'ç':t:=t+'&cedil;';
      'Ç':t:=t+'&Cedil;';
      'ê':t:=t+'&ecirc;';
      'ë':t:=t+'&euml;';
      'ö':t:=t+'&ouml;';
      'Ø':t:=t+'&Oslash;';
      'ø':t:=t+'&oslash;';
      'ß':t:=t+'&szlig;';
      'ü':t:=t+'&uuml;';
      //'&':t:=t+'&amp;'; no, else trasf. "&agrave;"
      //'<':t:=t+'&lt;'; no, else trasf. anche i tag!
      //'>':t:=t+'&gt;'; c.s.
      '€':t:=t+'&euro;';
      '"':if dblq then
        t:=t+''''
      else
        t:=t+'&quot;';
      '_':t:=t+'&ndash;';
      '°':t:=t+'&deg;'; //'°':t:=t+'&ordm;';
      '±':t:=t+'&plusmn;';
      '¼':t:=t+'&frac14;';
      '½':t:=t+'&frac12;';
      '¾':t:=t+'&frac34;';
      '÷':t:=t+'&divide;';
      ':':t:=t+'&#58;';
      else t:=t+c;
    end;
  end; //for
  result:=t;
end;

procedure TFmain.FormShow(Sender: TObject);
const
  f2_hint='F2 per ricerca per descrizione';
var
  s:widestring;
  kod:string;
  ctrlfile:textFile;
  e,x,col:integer;
  cod,q:longint;
  eraChiuso:boolean;
begin
  //deb('par:'+paramstr(1));
  getDir(0,pLoc);
  //showmessage('1:'+ploc);
  leggiParam();
  if not cercaParam('noctrlsessions') then begin
    {$i-}
    assignFile(ctrlfile,pLoc+'\chk_prod_ddt.flg');
    rewrite(ctrlfile);
    writeln(ctrlfile,42);
    //closeFile(ctrlfile); //rimane aperto per tutta la sessione
    {$i+}
    e:=IOResult; //se non lo può creare significa che Prod_man è già aperto:
    //showmessage('e:'+i2s(e));
    if e=5 then begin //=32
      //mess('programma già aperto o impossibile eseguire','attenzione',mb_ok+mb_iconExclamation);
      application.Terminate; //chiude questo perché l'altro già aperto resta attivo
      application.ProcessMessages;
      Halt(0);
    end;
  end;
  pageControl.ActivePageIndex:=0;
  col:=clGradientActiveCaption;
  EcodDest.Color :=col;
  EcodDstnz.Color:=col;
  Ecaus.Color    :=col;
  EcodVett.Color :=col;
  Eart.Color     :=col;
  //swap_(Lext);
  Lvers1.Caption:='versione del '+vers_data+' '+vers_serie;

  //hints:
  EcodDest.Hint :=f2_hint;
  EcodDstnz.Hint:=f2_hint;
  Ecaus.Hint    :=f2_hint;
  EcodVett.Hint :=f2_hint;

  //ampiezza colonne:
  (*dbgMan.ColumnByFieldName('cod').Width:=50;
  dbgMan.ColumnByFieldName('macch').Width:=90;
  dbgMan.ColumnByFieldName('desmacc').Width:=190;
  dbgMan.ColumnByFieldName('dessimp').Width:=520;
  dbgMan.ColumnByFieldName('desper').Width:=130; *)

  (*dbgAll.ColumnByFieldName('descr').Width:=260; //199;
  dbgAll.ColumnByFieldName('luogo').Width:=160; //111;
  dbgAll.ColumnByFieldName('finoal').Width:=80;
  dbgAll.ColumnByFieldName('riserv').Width:=45;*)

  //ampiezzaColMacc();
  //ampiezzaColScad();

  fd.Tcaus.Open;
  fd.Tddt.Close;
  fd.Tddt.SQL.Clear;
  fd.Tddt.SQL.Add('select * from tddt order by serie,cod');
  eraChiuso:=fd.Tddt.State=dsInactive;
  if eraChiuso then begin
    fd.Tddt.Open;
    leggiMem(mem_ddt);
    kod:=leggiMem(mem_ddt); //se 1° accesso, si posiz. su ddt in uso quando chiuso
    if kod<>'' then
      leggi(fd.Tddt,kod)
    else
      fd.Tddt.Last;
  end;
  fd.Trddt.Close;
  if fd.TddtCod.Text<>'' then begin
    s:='select serie,cod,r,riga,art,dis,comm,des,um,qta,note from rddt where cod='+fd.TddtCod.Text+' order by riga asc';
    fd.Trddt.SQL.Text:=s;
  end;
  fd.Trddt.Open;

  //swap_(LnoteMacc);
  //swap_(LmanutMacc);
  //apri(fd.Tmacc,fd.dsMacc,true,'cod');
  //apri(fd.Tmlav,fp.dsMlav,true,'lav');
  //apri(fd.Tmcomp,fp.dsMcomp,true,'cod');
  initFields();
end;

procedure TFmain.EnoteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  cosa:string;
  s:widestring;
begin
  case key of
    VK_F2:begin
      if not inputQuery(_info,'testo da ricercare nelle note',cosa) then
        exit;
      if trim(cosa)='' then
        exit;
      s:='select serie,cod,data';
      agg(s,'from tddt');
      agg(s,'where cod>0');
      agg(s,'and lower(note) like '+qs('%'+lowerCase(cosa)+'%'));
      agg(s,'order by cod,data');
      elenca(s,1,'d.d.t.',['serie','progressivo','data']);
      if not esc_ then
        fd.Tddt.Locate('cod',helpCod_,[]);
    end;
  end; //case
end;

procedure cambiaSezione();

  function noAstx(tit:string):string;
  begin
    if tit<>'' then
      if tit[1]='*' then
        tit:=copy(tit,2,length(tit)-2);
    Result:=tit;
  end;

  function astx(tit:string):string;
  begin
    if tit<>'' then
      if tit[1]<>'*' then
        tit:='*'+tit+'*';
    Result:=tit;
  end;

begin
  with Fmain do begin
    tsGest.Caption:=noAstx(tsGest.Caption);
    tsEl.Caption:=noAstx(tsEl.Caption);
    case pageControl.ActivePageIndex of
      0:begin
        tsGest.Caption:=astx(tsGest.Caption);
      end;
      1:begin
        tsEl.Caption:=astx(tsEl.Caption);
      end;
    end;
  end;
end;

procedure TFmain.PageControlChange(Sender: TObject);
begin
  cambiaSezione();
end;

procedure TFmain.TimerTimer(Sender: TObject);
var
  chkCall:TextFile;
  e:integer;
  fn:string;
begin
  if Fmain.WindowState=wsMinimized then begin;
    fn:=pLoc+'\chk_prod_ddt_call.flg'; //se esiste questo file -> prg chiamato da Prod. -> ingrandisci finestra
    //deb(fn);
    if fileExists(fn) then begin
      Fmain.WindowState:=wsNormal;
      Fmain.Refresh; //new 2
      Fmain.Repaint; //new
      {$i-}
      assignFile(chkCall,fn);
      erase(chkCall); //cancella file-flag
      {$i+}
      e:=IOResult;
    end;
  end;
end;

procedure carica();
var
  s:widestring;
  n:double;
begin
  with Fmain do begin
{$ifdef ver}
    //if ctrlDemo(Tddt) then exit;
{$endif}
    fd.Tddt.Insert;
    //fd.TddtCod.Value:=n;
    fd.TddtData.Value:=Now;
    fd.TddtDataIni.Value:=Now;
    fd.TddtCaus.Value:='VEN';
    fd.TddtI1.Value:=1; //tipo destinat.
    fd.TddtI2.Value:=1; //tipo destinaz.
    fd.TddtTrasp.Value:='m';
    fd.TddtPorto.Value:='f';
    fd.TddtAsp.Value:='A vista';
    Eser.SetFocus;
  end;
end;

procedure caricaRiga();
var
  s:widestring;
  n:longint;
begin
  with Fmain do begin
{$ifdef ver}
    //if ctrlDemo(Trddt) then exit;
{$endif}
    s:='select max(riga) as max from rddt where cod='+fd.TddtCod.Text;
    if fd.TddtSerie.Text<>'' then
      agg(s,'and serie='+fd.TddtSerie.Text);
    zgo(zq,s,'op');
    if not zq.IsEmpty then
      n:=trunc(vlr(vts(zq['max']))) //zq.FieldValues['max']
    else
      n:=0;
    zq.Close;
    n:=n+1;
    fd.Trddt.Insert;
    fd.TrddtCod.Value:=fd.TddtCod.Value;
    fd.TrddtSerie.Value:=fd.TddtSerie.Value;
    fd.TrddtRiga.Value:=n;
    Eart.SetFocus;
  end;
end;

procedure TFmain.BnewClick(Sender: TObject);
begin
  carica();
end;

procedure TFmain.BnewRigaClick(Sender: TObject);
begin
  caricaRiga();
end;

procedure TFmain.BstDdtClick(Sender: TObject);
var
  x:integer;
  n:string;
  s:widestring;
begin
  Tst.Close;
  Tst.Open;
  Tst.Insert;

  TstCod.Value     :=fd.TddtCod.Value;
  TstDestDes.Value :=fd.TddtDestDes.Value;
  TstDestInd.Value :=fd.TddtDestInd.Value;
  TstDestLoc.Value :=fd.TddtDestLoc.Value;
  TstDestNaz.Value :=fd.TddtDestNaz.Value;
  TstDstnzDes.Value:=fd.TddtDstnzDes.Value;
  TstDstnzInd.Value:=fd.TddtDstnzInd.Value;
  TstDstnzLoc.Value:=fd.TddtDstnzLoc.Value;
  TstDstnzNaz.Value:=fd.TddtDstnzNaz.Value;
  TstData.Value:=fd.TddtData.Value;

  n:='';
  case fd.TddtTrasp.Value of
    'm':n:='mittente';
    'd':n:='destinatario';
    'v':n:='vettore';
  end;
  TstTrasp.Value:=n;

  n:='';
  case fd.TddtPorto.Value of
    'f':n:='franco';
    'a':n:='assegnato';
  end;
  TstPorto.Value:=n;

  n:='';
  s:='select descr from caus where cod='+qs(fd.TddtCaus.Text);
  zgo(zq,s,'op');
  if zq.RecordCount>0 then
    n:=vts(zq['descr']);
  TstCaus.Value:=n;

  n:='';
  if Enote.Lines.Count>0 then begin
    for x:=0 to Enote.Lines.Count-1 do
      n+=Enote.Lines[x]+' ';
  end;
  TstNote.Value:=n;

  Tst.Post;

  Trst.Close;
  Trst.Open;

  fd.Trddt.First;
  while not fd.Trddt.EOF do begin
    Trst.Insert;
    TrstCod.Value:=fd.TrddtCod.Value;
    TrstUm.Value :=fd.TrddtUm.Value;
    TrstQta.Value:=fd.TrddtQta.Value;
    fd.Trddt.Next;
  end;

  (*fd.Tddt.Filter:='cod='+fd.TddtCod.Text;
  fd.Tddt.Filtered:=true;
  fd.Trddt.Filter:='cod='+fd.TddtCod.Text;
  fd.Trddt.Filtered:=true;*)

  //deb('ok');

  frDdt.ShowReport;
end;

procedure TFmain.dbNavClick(Sender: TObject; Button: TDBNavButtonType);
begin
  case button of
    nbinsert:carica();
    nbFirst,nbLast,nbPrior,nbNext:if da_aggiornare(fd.Tddt,'tddt','') then
      refresh();
    nbRefresh:refresh();
  end;
  if button in [nbFirst,nbLast,nbPrior,nbNext,nbCancel] then
    initFields();
end;

procedure TFmain.EartExit(Sender: TObject);
var
  s:widestring;
  c,tbl:string;
begin
  c:=trim(Eart.Text);
  if c<>'' then begin
    s:='select cod,descr from art where cod='+qs(c);
    zgo(zq,s,'op');
    if zq.RecordCount>0 then begin;
      poniEdit(fd.Tddt);
      fd.TrddtArt.Value:=vts(zq['cod']);
      fd.TrddtDes.Value:=vts(zq['descr']);
      Mdes.SetFocus;
      end
    else
      begin
      mess('codice articolo '+c+' inesistente',_info,_icons);
      Eart.SetFocus;
    end;
  end;
end;

procedure TFmain.EartKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  cosa:string;
  s:widestring;
begin
  case key of
    VK_F2:begin
      if not inputQuery(_info,'descrizione articolo',cosa) then
        exit;
      cosa:=trim(lowerCase(cosa));
      s:='select cod,cod,descr,diamest,diamint,spess,alt,um';
      agg(s,'from art');
      if cosa<>'' then
        agg(s,'where lower(descr) like '+qs('%'+cosa+'%'));
      agg(s,'order by descr,diamest,diamint,spess,alt,um');
      elenca(s,1,'articoli',['codice','descrizione','ø est.','ø int.','spess.','alt.','u.m.']);
      if not esc_ then begin
        s:='select cod,descr,diamest,diamint,spess,alt,um';
        agg(s,'from art');
        agg(s,'where cod='+qs(helpCod_));
        zgo(zq,s,'op');
        poniEdit(fd.Trddt);
        fd.TrddtArt.Value:=vts(zq['cod']);
        fd.TrddtDes.Value:=vts(zq['descr']);
        fd.TrddtUm.Value:=vts(zq['um']);
        fd.TrddtQta.Value:=1;
      end;
    end;
  end; //case
end;

procedure TFmain.EcausExit(Sender: TObject);
var
  s:widestring;
  c:string;
begin
  c:=trim(Ecaus.Text);
  LdesCaus.Caption:='';
  if c<>'' then begin
    s:='select cod,descr from caus where cod='+qs(c);
    zgo(zq,s,'op');
    if zq.RecordCount>0 then begin;
      poniEdit(fd.Tddt);
      fd.TddtCaus.Value:=vts(zq['cod']);
      LdesCaus.Caption:=vts(zq['descr']);
      end
    else
      begin
      mess('codice causale '+c+' inesistente',_info,_icons);
      Ecaus.SetFocus;
    end;
  end;
end;

procedure TFmain.EcausKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  s:widestring;
  tbl,cosa:string;
begin
  case key of
    VK_F2:begin
      if not inputQuery(_info,'descrizione causale',cosa) then
        exit;
      cosa:=trim(lowerCase(cosa));
      s:='select cod,descr';
      agg(s,'from caus');
      agg(s,'where cod is not null');
      if cosa<>'' then
        agg(s,'and lower(descr) like '+qs('%'+cosa+'%'));
      agg(s,'order by descr');
      elenca(s,1,'causali',['descrizione']);
      if not esc_ then begin
        s:='select cod,descr from caus where cod='+qs(helpCod_);
        zgo(zq,s,'op');
        poniEdit(fd.Tddt);
        fd.TddtCaus.Value:=vts(zq['cod']);
        LdesCaus.Caption:=vts(zq['descr']);
      end;
    end;
  end; //case
end;

procedure TFmain.EcodDestExit(Sender: TObject);
var
  s:widestring;
  c,tbl:string;
begin
  c:=trim(EcodDest.Text);
  if c<>'' then begin
    case fd.TddtI1.Value of
      1:tbl:='cli';
      2:tbl:='forn';
    end;
    s:='select cod,nome,ind,cap,loc,prov,stato from '+tbl+' where cod='+qs(c);
    zgo(zq,s,'op');
    if zq.RecordCount>0 then begin;
      poniEdit(fd.Tddt);
      fd.TddtDestCod.Value:=vts(zq['cod']);
      fd.TddtDestDes.Value:=vts(zq['nome']);
      fd.TddtDestInd.Value:=vts(zq['ind']);
      fd.TddtDestLoc.Value:=trim(vts(zq['cap'])+' '+vts(zq['loc'])+' '+vts(zq['prov']));
      fd.TddtDestNaz.Value:=vts(zq['stato']);
      EcodDstnz.SetFocus;
      end
    else
      begin
      mess('codice '+tbl+'. '+c+' inesistente',_info,_icons);
      EcodDest.SetFocus;
    end;
  end;
end;

procedure TFmain.EcodDestKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  s:widestring;
  tbl,cosa:string;
begin
  case key of
    VK_F2:begin
      if not inputQuery(_info,'descrizione destinatario',cosa) then
        exit;
      cosa:=trim(lowerCase(cosa));
      case fd.TddtI1.Value of
        1:tbl:='cli';
        2:tbl:='forn';
      end;
      (*s:='select 1 as tipo,cod,''cli.'' as tipo,initCap(nome) as nome,prov,stato';
      agg(s,'from cli');
      agg(s,'where cod is not null and nome is not null');
      if cosa<>'' then
        agg(s,'and lower(nome) like '+qs('%'+cosa+'%'));
      agg(s,'union');
      agg(s,'select 2 as tipo,cod,''forn.'' as tipo,initCap(nome) as nome,prov,stato');
      agg(s,'from forn');*)
      s:='select cod,cod,initCap(nome) as nome,prov,stato';
      agg(s,'from '+tbl);
      agg(s,'where cod is not null and nome is not null');
      if cosa<>'' then
        agg(s,'and lower(nome) like '+qs('%'+cosa+'%'));
      agg(s,'order by nome,stato');
      elenca(s,1,'destinatari',['codice','descrizione','prov.','Stato']);
      if not esc_ then begin
        (*case arrHelpCod_[1] of
          '1':tbl:='cli';
          '2':tbl:='forn';
        end;*)
        s:='select cod,nome,ind,cap,loc,prov,stato from '+tbl+' where cod='+qs(helpCod_);
        deb(s);
        zgo(zq,s,'op');
        poniEdit(fd.Tddt);
        fd.TddtDestCod.Value:=vts(zq['cod']);
        fd.TddtDestDes.Value:=vts(zq['nome']);
        fd.TddtDestInd.Value:=vts(zq['ind']);
        fd.TddtDestLoc.Value:=trim(vts(zq['cap'])+' '+vts(zq['loc'])+' '+vts(zq['prov']));
        fd.TddtDestNaz.Value:=vts(zq['stato']);
        EcodDstnz.SetFocus;
      end;
    end;
  end; //case
end;

procedure TFmain.EcodDstnzExit(Sender: TObject);
var
  s:widestring;
  c,tbl:string;
begin
  c:=trim(EcodDstnz.Text);
  if c<>'' then begin
    case fd.TddtI2.Value of
      1:tbl:='cli';
      2:tbl:='forn';
    end;
    s:='select cod,nome,ind,cap,loc,prov,stato from '+tbl+' where cod='+qs(c);
    zgo(zq,s,'op');
    if zq.RecordCount>0 then begin;
      poniEdit(fd.Tddt);
      fd.TddtDstnzCod.Value:=vts(zq['cod']);
      fd.TddtDstnzDes.Value:=vts(zq['nome']);
      fd.TddtDstnzInd.Value:=vts(zq['ind']);
      fd.TddtDstnzLoc.Value:=trim(vts(zq['cap'])+' '+vts(zq['loc'])+' '+vts(zq['prov']));
      fd.TddtDstnzNaz.Value:=vts(zq['stato']);
      gbTraspDi.SetFocus;
      end
    else
      begin
      mess('codice '+tbl+'. '+c+' inesistente',_info,_icons);
      EcodDstnz.SetFocus;
    end;
  end;
end;

procedure TFmain.EcodDstnzKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  s:widestring;
  tbl,cosa:string;
begin
  case key of
    VK_F2:begin
      if not inputQuery(_info,'descrizione destinazione',cosa) then
        exit;
      cosa:=trim(lowerCase(cosa));
      case fd.TddtI2.Value of
        1:tbl:='cli';
        2:tbl:='forn';
      end;
      (*s:='select 1 as tipo,cod,''cli.'' as tipo,initCap(nome) as nome,prov,stato';
      agg(s,'from cli');
      agg(s,'where cod is not null and nome is not null');
      if cosa<>'' then
        agg(s,'and lower(nome) like '+qs('%'+cosa+'%'));
      agg(s,'union');
      agg(s,'select 2 as tipo,cod,''forn.'' as tipo,initCap(nome) as nome,prov,stato');
      agg(s,'from forn');*)
      s:='select cod,cod,initCap(nome) as nome,prov,stato';
      agg(s,'from '+tbl);
      agg(s,'where cod is not null and nome is not null');
      if cosa<>'' then
        agg(s,'and lower(nome) like '+qs('%'+cosa+'%'));
      agg(s,'order by nome,stato');
      elenca(s,1,'destinatazioni',['codice','descrizione','prov.','Stato']);
      if not esc_ then begin
        (*case arrHelpCod_[1] of
          '1':tbl:='cli';
          '2':tbl:='forn';
        end;*)
        s:='select cod,nome,ind,cap,loc,prov,stato from '+tbl+' where cod='+qs(helpCod_);
        deb(s);
        zgo(zq,s,'op');
        poniEdit(fd.Tddt);
        fd.TddtDstnzCod.Value:=vts(zq['cod']);
        fd.TddtDstnzDes.Value:=vts(zq['nome']);
        fd.TddtDstnzInd.Value:=vts(zq['ind']);
        fd.TddtDstnzLoc.Value:=trim(vts(zq['cap'])+' '+vts(zq['loc'])+' '+vts(zq['prov']));
        fd.TddtDstnzNaz.Value:=vts(zq['stato']);
        gbTraspDi.SetFocus;
      end;
    end;
  end;
end;

procedure TFmain.EcodDstnzKeyPress(Sender: TObject; var Key: char);
begin
  deb('keypress');
end;

procedure TFmain.EcodVettExit(Sender: TObject);
var
  s:widestring;
  c,tbl:string;
begin
  c:=trim(EcodVett.Text);
  if c<>'' then begin
    s:='select cod,nome,ind,cap,loc,prov,stato from forn where tipo=''TRAS'' and cod='+qs(c);
    zgo(zq,s,'op');
    if zq.RecordCount>0 then begin;
      poniEdit(fd.Tddt);
      fd.TddtVettCod.Value:=vts(zq['cod']);
      fd.TddtVettDes.Value:=vts(zq['nome']);
      fd.TddtVettInd.Value:=vts(zq['ind']);
      fd.TddtVettLoc.Value:=trim(vts(zq['cap'])+' '+vts(zq['loc'])+' '+vts(zq['prov']));
      fd.TddtVettNaz.Value:=vts(zq['stato']);
      Enote.SetFocus;
      end
    else
      begin
      mess('codice vettore '+c+' inesistente',_info,_icons);
      EcodVett.SetFocus;
    end;
  end;
end;

procedure TFmain.EcodVettKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  cosa:string;
  s:widestring;
begin
  case key of
    VK_F2:begin
      if not inputQuery(_info,'descrizione',cosa) then
        exit;
      cosa:=trim(lowerCase(cosa));
      s:='select cod,initCap(nome) as nome,loc,stato';
      agg(s,'from forn');
      agg(s,'where cod is not null and nome is not null ');
      if cosa<>'' then
        agg(s,'and lower(nome) like '+qs('%'+cosa+'%'));
      agg(s,'and tipo=''TRAS'' ');
      agg(s,'order by nome,stato');
      elenca(s,1,'trasportatori',['descrizione','località','Stato']);
      if not esc_ then begin
        s:='select cod,nome,ind,cap,loc,prov,stato from forn where cod='+qs(helpCod_);
        zgo(zq,s,'op');
        poniEdit(fd.Tddt);
        fd.TddtVettCod.Value:=vts(zq['cod']);
        fd.TddtVettDes.Value:=vts(zq['nome']);
        fd.TddtVettInd.Value:=vts(zq['ind']);
        fd.TddtVettLoc.Value:=trim(vts(zq['cap'])+' '+vts(zq['loc'])+' '+vts(zq['prov']));
        fd.TddtVettNaz.Value:=vts(zq['stato']);
        Enote.SetFocus;
      end;
    end;
  end; //case
end;

procedure TFmain.EcommExit(Sender: TObject);
var
  s:widestring;
  c,tbl:string;
begin
  c:=trim(Ecomm.Text);
  if c<>'' then begin
    s:='select cod,descr1,qta from rcomm where commint='+c;
    zgo(zq,s,'op');
    if zq.RecordCount>0 then begin;
      poniEdit(fd.Trddt);
      fd.TrddtComm.Value:=trunc(vlr(vts(zq['cod'])));
      fd.TrddtDes.Value:=vts(zq['descr1']);
      Mdes.SetFocus;
      end
    else
      begin
      mess('commessa '+c+' inesistente',_info,_icons);
      Ecomm.SetFocus;
    end;
  end;
end;

procedure TFmain.EdisExit(Sender: TObject);
var
  s:widestring;
  c,tbl:string;
begin
  c:=trim(Edis.Text);
  if c<>'' then begin
    s:='select cod,descr from dis where cod='+qs(c);
    zgo(zq,s,'op');
    if zq.RecordCount>0 then begin;
      poniEdit(fd.Tddt);
      fd.TrddtArt.Value:=vts(zq['cod']);
      fd.TrddtDes.Value:=vts(zq['descr']);
      Mdes.SetFocus;
      end
    else
      begin
      mess('codice disegno '+c+' inesistente',_info,_icons);
      Edis.SetFocus;
    end;
  end;
end;

procedure TFmain.EdisKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
var
  cosa:string;
  s:widestring;
begin
  case key of
    VK_F2:begin
      if not inputQuery(_info,'disegno',cosa) then
        exit;
      cosa:=trim(lowerCase(cosa));
      s:='select cod,cod,des';
      agg(s,'from dis');
      if cosa<>'' then
        agg(s,'where lower(des) like '+qs('%'+cosa+'%'));
      agg(s,'order by cod,des');
      elenca(s,1,'disegni',['codice','descrizione']);
      if not esc_ then begin
        s:='select cod,des';
        agg(s,'from dis');
        agg(s,'where cod='+qs(helpCod_));
        zgo(zq,s,'op');
        poniEdit(fd.Trddt);
        fd.TrddtDis.Value:=vts(zq['cod']);
        fd.TrddtDes.Value:=vts(zq['des']);
        fd.TrddtUm.Value:='nr.';
        fd.TrddtQta.Value:=1;
        Mdes.SetFocus;
      end;
    end;
  end; //case
end;

procedure TFmain.FormClose(Sender: TObject; var CloseAction: TCloseAction);
var
  chkCall:textFile;
  fn:string;
begin
  fn:=pLoc+'\chk_prod_ddt.flg';
  {$i-}
  assignFile(chkCall,fn);
  erase(chkCall); //cancella file-flag
  {$i+}
  if IOResult=0 then ;

  fn:=pLoc+'\chk_prod_ddt_call.flg';
  {$i-}
  assignFile(chkCall,fn);
  erase(chkCall); //cancella file-flag
  {$i+}
  if IOResult=0 then ;

  scriviMem(mem_ddt,fd.TddtCod.Text);
end;

procedure TFmain.BcancClick(Sender: TObject);
begin
  if mess('conferma cancellazione d.d.t.?','conferma',mb_YesNo+mb_iconQuestion)=id_No then
    exit
  else
    try
      //... testa + righe...
    except
      mess('impossibile eseguire cancellazione - riprovare',_info,_icons);
    end;
end;

procedure TFmain.BcancRigaClick(Sender: TObject);
begin
  if mess('conferma cancellazione riga d.d.t.?','conferma',mb_YesNo+mb_iconQuestion)=id_No then
    exit
  else
    try
      fd.Trddt.Delete;
    except
      mess('impossibile eseguire cancellazione - riprovare',_info,_icons);
    end;
end;

procedure TFmain.BcercaDestClick(Sender: TObject);
var
  cosa:string;
  s:widestring;
begin
  if not inputQuery(_info,'descrizione macchina da cercare',cosa) then
    exit;
  if trim(cosa)='' then
    exit;
  s:='select cod,cod,des,cc';
  agg(s,'from macch');
  agg(s,'where cod<>'+qs('')); //x=man.previste
  agg(s,'and lower(des) like '+qs('%'+lowerCase(cosa)+'%'));
  agg(s,'order by des');
  elenca(s,1,'macchine',['codice:80','descrizione:250','centro costo:70']);
  //if not esc_ then
    //if fd.Tmacc.Locate('cod',helpCod_,[]) then
      //initFieldsMacc();
end;

procedure TFmain.BdesManClick(Sender: TObject);
var
  cosa:string;
  s:widestring;
begin
  if not inputQuery(_info,'testo da cercare',cosa) then
    exit;
  if trim(cosa)='' then
    exit;
  cosa:=lowerCase(cosa);
  s:='select cod,cod,data,macch,dessimp';
  agg(s,'from rip');
  agg(s,'where garanzia=''x''');
  agg(s,'and (lower(dessimp) like '+qs('%'+cosa+'%'));
  agg(s,'or lower(notes) like '+qs('%'+cosa+'%')+')');
  elenca(s,1,'elenco',['reg.','data','macchina','descrizione sintetica']);
  if not esc_ then
    fd.Tddt.Locate('cod',helpCod_,[]);
end;

procedure TFmain.BmodClick(Sender: TObject);
begin
  poniEdit(fd.Tddt);
end;

procedure TFmain.BmodRigaClick(Sender: TObject);
begin
  poniEdit(fd.TRddt);
  Eart.SetFocus;
end;

end.

