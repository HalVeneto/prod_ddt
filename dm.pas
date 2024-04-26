unit dm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, ZConnection,
  LCLType, //per iconQuestion
  Variants, //per varArrayOf
  units,
  Graphics,
  ZDataset;

type

  { Tfd }

  Tfd = class(TDataModule)
    dsDdt: TDataSource;
    dsCaus: TDataSource;
    dsRddt: TDataSource;
    dsPers: TDataSource;
    dsDocs: TDataSource;
    dsZq: TDataSource;
    Tcaus: TZQuery;
    Tcauscod: TStringField;
    Tcausdescr: TStringField;
    Tddt: TZQuery;
    Tddtasp: TStringField;
    Tddtcaus: TStringField;
    Tddtcod: TLongintField;
    Tddtcolli: TLongintField;
    Tddtdata: TDateField;
    Tddtdataini: TDateField;
    TddtDesCaus: TStringField;
    TddtDesPorto: TStringField;
    Tddtdestcod: TStringField;
    Tddtdestdes: TStringField;
    Tddtdestind: TStringField;
    Tddtdestloc: TStringField;
    Tddtdestnaz: TStringField;
    Tddtdestpiva: TStringField;
    Tddtdstnzcod: TStringField;
    Tddtdstnzdes: TStringField;
    Tddtdstnzind: TStringField;
    Tddtdstnzloc: TStringField;
    Tddtdstnznaz: TStringField;
    Tddtdstnzpiva: TStringField;
    Tddtf1: TFloatField;
    Tddtf2: TFloatField;
    Tddtf3: TFloatField;
    Tddti1: TLongintField;
    Tddti2: TLongintField;
    Tddti3: TLongintField;
    Tddtnote: TMemoField;
    Tddtporto: TStringField;
    Tddts1: TStringField;
    Tddts2: TStringField;
    Tddts3: TStringField;
    Tddtserie: TStringField;
    Tddtt1: TMemoField;
    Tddttrasp: TStringField;
    TddtTraspDes: TStringField;
    Tddtvettcod: TStringField;
    Tddtvettdes: TStringField;
    Tddtvettind: TStringField;
    Tddtvettloc: TStringField;
    Tddtvettnaz: TStringField;
    Tdocscod: TStringField;
    Tdocsdescr: TStringField;
    Tdocsfinoal: TDateField;
    Tdocsluogo: TStringField;
    Tdocsr: TLargeintField;
    Tdocsriga: TLongintField;
    Tdocsriserv: TLongintField;
    Tdocstipo: TStringField;
    Tdocstipofile: TStringField;
    Tmacci1: TLongintField;
    Tmacccc: TStringField;
    Tmacccod: TStringField;
    Tmacccons: TLongintField;
    Tmaccdes: TStringField;
    Tmaccel: TLongintField;
    Tmaccmanut: TMemoField;
    Tmaccnote: TMemoField;
    Tmaccord: TLongintField;
    TmCompcod: TStringField;
    TmCompdes: TStringField;
    TmCompgiac: TFloatField;
    TmCompscomin: TLongintField;
    Trddt: TZQuery;
    Tmanutcod: TFloatField;
    Tmanutdata: TDateField;
    TmanutdesMacch: TStringField;
    TmanutdesPer: TStringField;
    Tmanutdessimp: TStringField;
    Tmanutgaranzia: TStringField;
    Tmanuti2: TLongintField;
    Tmanutmacch: TStringField;
    Tmanutnotes: TMemoField;
    Tmanutperiod: TLongintField;
    Tmanutscad: TDateField;
    Tmanuttipop: TLongintField;
    TmLavcod: TStringField;
    TmLavDes: TStringField;
    TmLavlav: TStringField;
    Tpers: TZQuery;
    Tdocs: TZQuery;
    Tpersatt: TLongintField;
    Tperscod: TStringField;
    Tpersdescr: TStringField;
    Trddtart: TStringField;
    Trddtcod: TLongintField;
    Trddtcomm: TLongintField;
    Trddtdes: TMemoField;
    Trddtdis: TStringField;
    Trddtnote: TMemoField;
    Trddtqta: TFloatField;
    Trddtr: TLongintField;
    Trddtriga: TLongintField;
    Trddtserie: TStringField;
    Trddtum: TStringField;
    ZConnection: TZConnection;
    zq: TZQuery;
    zq_agg: TZQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure dsRddtDataChange(Sender: TObject; Field: TField);
    procedure TddtAfterPost(DataSet: TDataSet);
    procedure TddtBeforePost(DataSet: TDataSet);
    procedure TmanutBeforePost(DataSet: TDataSet);
    procedure TmanutCalcFields(DataSet: TDataSet);
    procedure TmCompAfterInsert(DataSet: TDataSet);
    procedure TmCompAfterPost(DataSet: TDataSet);
    procedure TrddtCalcFields(DataSet: TDataSet);
    procedure TmLavAfterInsert(DataSet: TDataSet);
    procedure TmLavCalcFields(DataSet: TDataSet);
  private

  public

  end;

  function maxCodNum(proponi:boolean; len:byte; tblName,campo:string):string; overload;
  function maxCodNum(tblName,campo:string; tbl:TZQuery):longint; overload;

  function leggiIniz(tbl:TZQuery; tblname,cosa:string):boolean; //lettura chiave iniziale parziale (locate spesso non va)
  function leggiIniz(tbl:TZQuery; tblname:string; cosa:double):boolean; //c.s.
  function leggi(tbl:TZQuery; cosa:double):boolean; overload;
  function leggi(tbl:TZQuery; cosa:string):boolean; overload;

  procedure zgo(sq:TZQuery; s:widestring; az:string);
  function da_aggiornare(tbl:TZQuery; dove,condiz:string):boolean; //ctrl se sono stati caricati o cancellati rec dalla tbl da altro utente
  function leggiMem(dove:word):string;
  procedure scriviMem(dove:word; cosa:string); overload;
  procedure scriviMem(dove:word; cosa:boolean); overload;
  procedure scriviMem(dove:word; cosa:integer); overload;

const
  {$include mem.include.pas} //in \prod
type
  memorie_type=record //la key è la pos. del record del mnemonico; salva ultimo cod. consultato
    mem:string[255];
  end;
var
  fd: Tfd;
  pLoc:string; //path locale
  rmem:memorie_type;
  mem:file of memorie_type;

implementation

{$R *.lfm}

function leggiMem(dove:word):string;
var
  x:word;
begin
  {$I-}
  assignFile(mem,pLoc+'\mem.inf'); reset(mem);
  {$I+}
  if IOResult=0 then begin
    seek(mem,dove);
    read(mem,rmem);
    closeFile(mem);
    leggiMem:=rmem.mem;
    end
  else
    begin
    {$I-}
    rewrite(mem);
    rmem.mem:='';
    for x:=0 to 1000 do
      write(mem,rmem);
    closeFile(mem);
    {$I+}
    if IOResult=0 then ;
    leggiMem:='';
  end;
end;

procedure scriviMem(dove:word; cosa:string); overload;
begin
  {$I-}
  assignFile(mem,pLoc+'\mem.inf'); reset(mem);
  {$I+}
  if IOResult=0 then begin
    seek(mem,dove);
    rmem.mem:=cosa;
    write(mem,rmem);
    closeFile(mem);
  end;
end;

procedure scriviMem(dove:word; cosa:boolean); overload;
var
  d:string;
begin
  {$I-}
  assignFile(mem,pLoc+'\mem.inf'); reset(mem);
  {$I+}
  if IOResult=0 then begin
    seek(mem,dove);
    if cosa then d:='true' else d:='false';
    rmem.mem:=d;
    write(mem,rmem);
    closeFile(mem);
  end;
end;

procedure scriviMem(dove:word; cosa:integer); overload;
begin
  {$I-}
  assignFile(mem,pLoc+'\mem.inf'); reset(mem);
  {$I+}
  if IOResult=0 then begin
    seek(mem,dove);
    rmem.mem:=intToStr(cosa);
    write(mem,rmem);
    closeFile(mem);
  end;
end;

function maxCodNum(proponi:boolean; len:byte; tblName,campo:string):string; overload;
var
  sql:string;
  x:byte;
begin
  if not proponi then
    result:=''
  else
    with fd do begin
      zq.close;
      zq.SQL.clear;
      sql:='select max('+campo+') as maxval from '+tblName+' where (cast(cod as character varying) ~ '+qs('^([0-9]+[.]?[0-9]*|[.][0-9]+)$')+')';
      //sql:='select max('+campo+') as maxval from '+tblName; //+' where (cod ~ '+quotedstr('^([0-9]+[.]?[0-9]*|[.][0-9]+)$')+')='+quotedstr('t');
      //sql:='select max(cast(btrim(upper(cod),'+QuotedStr('ABCDEFGHIJKLMNOPQRSTUVWXYZ-_+/ ')+') as numeric)) as maxval from '+tblName;
      //sql:=sql+' where '+campo+' is not null';
      zq.SQL.add(sql);
      zq.Open;
      zq.First;
      sql:=vts(zq['maxval']);
      str(vlr(sql)+1:len:0,sql);
      if len>0 then
        for x:=1 to len do
          if sql[x]=' ' then sql[x]:='0';
      zq.close;
      result:=sql;
    end;
end;

function maxCodNum(tblName,campo:string; tbl:TZQuery):longint; overload;
var
  sql:widestring;
  vs:string;
  v:longint;
begin
  with fd do begin
    sql:='select max('+campo+') as maxval from '+tblName+' where (cast(cod as character varying) ~ '+qs('^([0-9]+[.]?[0-9]*|[.][0-9]+)$')+')';
    zgo(zq,sql,'op');
    zq.first;
    vs:=vts(zq['maxval']);
    v:=trunc(vlr(vs))+1;
    zq.close;
  end;
  result:=v;
end;

procedure zgo(sq:TZQuery; s:widestring; az:string);
begin
  sq.Close;
  sq.SQL.Clear;
  sq.SQL.Add(s);
  if az='op' then begin
    sq.Open;
    sq.First; //29/01/19
    end
  else
    if az='ex' then
      sq.ExecSQL
    else
      mess('impossibile eseguire query - azione "'+az+'" sconosciuta','attenzione',mb_ok+mb_iconWarning);
end;

function leggiIniz(tbl:TZQuery; tblname,cosa:string):boolean; //lettura chiave iniziale parziale (locate spesso non va)
var
  cod,s:string;
begin
  s:='select cod from '+tblname+' where lower(cod)<=lower('+qs(cosa+'%')+') order by cod desc limit 1';
  zgo(fd.zq,s,'op');
  if fd.zq.RecordCount=0 then
    result:=false
  else
    begin
    if tbl.State=dsInactive then begin
      tbl.open;
      if tbl.State=dsInactive then begin
        mess('impossibile aprire e leggere "'+tbl.Name+'"',_info,mb_iconError+mb_ok);
        result:=false;
        exit;
      end;
    end;
    cod:=vts(fd.zq['cod']);
    if tbl.Locate('cod',cod,[loPartialKey]) then //,loCaseInsensitive]) then lasciato case sens. per tipo OA T(el.)/t(rasp.)
      result:=true
    else
      result:=false;
  end;
end;

function leggiIniz(tbl:TZQuery; tblname:string; cosa:double):boolean; //lettura chiave iniziale parziale (locate spesso non va)
var
  cod,s:string;
begin
  s:='select max(cod) as cod from '+tblname+' where cod<='+tostr(cosa)+' order by cod desc limit 1';
  zgo(fd.zq,s,'op');
  if fd.zq.RecordCount=0 then
    result:=false
  else
    begin
    if tbl.state=dsInactive then begin
      tbl.open;
      if tbl.State=dsInactive then begin
        mess('impossibile aprire e leggere "'+tbl.Name+'"',_info,mb_iconError+mb_ok);
        result:=false;
        exit;
      end;
    end;
    cod:=vts(fd.zq['cod']);
    if tbl.Locate('cod',cod,[loPartialKey]) then //,loCaseInsensitive]) then lasciato case sens. per tipo OA T(el.)/t(rasp.)
      result:=true
    else
      result:=false;
  end;
end;

procedure Tfd.TddtAfterPost(DataSet: TDataSet);
var
  s:widestring;
begin
  Tddt.ApplyUpdates;
  //zqApplyUpdates(Tddt);
  // genn23: non serve?: agg_disp(Fmain.pcInfo.ActivePageIndex); //non porta focus su sezione "giusta" else nasconde gestione corrente

  //nbago22 aggiornaMessaggi();

  (*nr:=info_oggi();
  //showmessage(intToStr(nr));
  if nr>max_rows_ext then
    mess('superata capacità max di righe (contate '+intToStr(nr)+')'+cr
      +'verranno visualizzate solo le prime '+intToStr(max_rows_ext),'attenzione',mb_Ok+mb_iconWarning); *)

  //segna flag per utente EST (monitor esterno) che il timer legge = aggiornare videata (maybe unused, ctrl):
  s:='update pers set agg_disp='+qs('1')+' where cod='+qs('EST'); //flag per aggiornare videata monitor ext
  zgo(zq,s,'ex');
end;

procedure Tfd.DataModuleCreate(Sender: TObject);
begin

end;

procedure Tfd.dsRddtDataChange(Sender: TObject; Field: TField);
begin

end;

procedure Tfd.TddtBeforePost(DataSet: TDataSet);
begin
end;

procedure Tfd.TmanutBeforePost(DataSet: TDataSet);
begin
end;

procedure Tfd.TmanutCalcFields(DataSet: TDataSet);
begin
end;

procedure Tfd.TmCompAfterInsert(DataSet: TDataSet);
begin
  TmCompCod.Value:=TmaccCod.Value;
end;

procedure Tfd.TmCompAfterPost(DataSet: TDataSet);
begin
end;

procedure Tfd.TrddtCalcFields(DataSet: TDataSet);
var
  tempo:string[22];
  per:word;
begin
  {if Trddtscad.Value>0 then begin
    TrddtDesPer.Value:='fissato il '+Trddtscad.Text;
    end
  else
    begin
    per:=Trddtperiod.Value;
    case Trddttipop.Value of
      1:tempo:='giorn'+plur(per,'o','i');
      2:tempo:='settiman'+plur(per,'a','e');
      3:tempo:='mes'+plur(per,'e','i');
      4:tempo:='ann'+plur(per,'o','i');
      else tempo:='';
    end;
    if tempo='' then
      TrddtDesPer.Value:=''
    else
      TrddtDesPer.Value:=i2s(per)+' '+tempo;
  end;}
end;

procedure Tfd.TmLavAfterInsert(DataSet: TDataSet);
begin
end;

procedure Tfd.TmLavCalcFields(DataSet: TDataSet);
begin
end;

function ce(tbl,cosa:string; num:boolean):boolean;
begin
  with fd do begin
    //if cercaparam('noctrlsessions') then showmessage('select cod from '+tbl+' where cod='+cosa);
    if num then begin //or is_numeric(cosa) then ...no perché il cod. può essere composto da nr. ma essere in un campo stringa...
      try //new 10/08/2021: dava errore con cod. tipo 598211 perché li intendeva numerici anche se stringhe
        zgo(zq,'select cod from '+tbl+' where cod='+cosa,'op');
      except
        zgo(zq,'select cod from '+tbl+' where cod='+qs(cosa),'op')
      end;
      end
    else
      begin
      cosa:=qs(cosa);
      try
        //se cerca un nr. di tipo stringa dà err per il lower; "num" non sempre ok se da leggi():
        zgo(zq,'select cod from '+tbl+' where lower(cod)='+lowercase(cosa),'op');
      except
        zgo(zq,'select cod from '+tbl+' where cod='+cosa,'op'); //riprova ricerca come nr.
      end;
    end;
    result:=zq.RecordCount>0;
  end;
end;

function leggi(tbl:TZQuery; cosa:string):boolean; overload;
//importante passare var. tipo giusto per evitare err. in ce() (non passare str se double)
var
  num:boolean;
begin
  if cosa='' then begin //new 11/07/17
    result:=false;
    exit;
  end;
  if tbl.State=dsInactive then begin
    tbl.Open;
    if tbl.State=dsInactive then begin
      mess('impossibile aprire e leggere "'+tbl.Name+'"',_info,mb_iconError+mb_ok);
      result:=false;
      exit;
    end;
  end;
  if tbl.Locate('cod',cosa,[]) then //[loCaseInsensitive]); lasciato case sens. per tipo OA T(el.)/t(rasp.)
    result:=true
  else
    begin
    if (tbl.Properties.Count=0) or (trim(tbl.Properties[0])='') then begin //solo per precauzione nel caso mi sia dimenticato di mettere nome tbl in properties[0]
      result:=false;
      exit;
    end;
    num:=vlrNum(cosa,false)>0; //vlr->vlrNum 26/01/21 per cod.art.P123AB/3
    if ce(tbl.Properties[0],cosa,num) then begin //se non trova, fa ricerca sql per ctrl se caricato nel frattempo da altro utente...
      tbl.Close; tbl.Open; //...refresh tbl...
      if tbl.Locate('cod',cosa,[]) then //...e rilegge
        result:=true
      else
        result:=false;
      end
    else
      result:=false;
  end;
end;

function leggi(tbl:TZQuery; cosa:double):boolean; overload;
begin
  if tbl.state=dsInactive then begin
    tbl.open;
    if tbl.state=dsInactive then begin
      mess('impossibile aprire e leggere "'+tbl.Name+'"',_info,mb_iconError+mb_ok);
      result:=false;
      exit;
    end;
  end;
  if tbl.Locate('cod',cosa,[]) then //[loCaseInsensitive]) then lasciato case sens. per tipo OA T(el.)/t(rasp.)
    result:=true
  else
    begin
    if (tbl.Properties.Count=0) or (trim(tbl.Properties[0])='') then begin //solo per precauzione nel caso mi sia dimenticato di mettere nome tbl in properties[0]
      result:=false;
      exit;
    end;
    if ce(tbl.Properties[0],floattostr(cosa),true) then begin //...ctrl se mette i punti...
      tbl.Close;
      tbl.Open;
      if tbl.Locate('cod',cosa,[]) then
        result:=true
      else
        result:=false;
      end
    else
      result:=false;
  end;
end;

function leggi(tbl:TZQuery; cosa:array of variant; campikey:string):boolean; overload;
begin
  if tbl.state=dsInactive then begin
    tbl.open;
    if tbl.state=dsInactive then begin
      mess('impossibile aprire e leggere "'+tbl.Name+'"',_info,mb_iconError+mb_ok);
      result:=false;
      exit;
    end;
  end;
  if tbl.Locate(campikey,varArrayOf(cosa),[]) then //[loCaseInsensitive]) then lasciato case sens. per tipo OA T(el.)/t(rasp.)
    result:=true
  else
    result:=false;
end;

function da_aggiornare(tbl:TZQuery; dove,condiz:string):boolean; //ctrl se sono stati caricati o cancellati rec dalla tbl da altro utente
var
  s:string;
begin
  if insEd(tbl) then
    result:=false
  else
    begin
    tbl.Cancel;
    s:='select count(*) as tot from '+dove+' '+condiz;
    zgo(fd.zq_agg,s,'op');
    if fd.zq_agg.RecordCount>0 then
      result:=fd.zq_agg.FieldValues['tot']<>tbl.RecordCount;
  end;
end;


end.

