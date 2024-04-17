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
    EcodDstnz: TDBEdit;
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
    frDBDSeff: TfrDBDataSet;
    frDBDmacc: TfrDBDataSet;
    frMacc: TfrReport;
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
    dsElc: TDataSource;
    dsQcal: TDataSource;
    dsAlleg: TDataSource;
    dsZq: TDataSource;
    dsEl: TDataSource;
    frDBDataSetTelc: TfrDBDataSet;
    frDdt: TfrReport;
    PageControl: TPageControl;
    pTesta: TBCPanel;
    pMan1: TBCPanel;
    pNavTesta: TBCPanel;
    pRiga: TBCPanel;
    pTitMan: TBCPanel;
    qCalcod: TStringField;
    qCaldata: TDateField;
    qCaldessimp: TStringField;
    qCali2: TLongintField;
    qCalmacch: TStringField;
    qCalmacchina: TStringField;
    qCalmanutenzione: TMemoField;
    qCalnote: TMemoField;
    qCalnotes: TMemoField;
    qCalperiod: TLongintField;
    qCalreg: TFloatField;
    qCalscad: TDateField;
    qCaltipop: TLongintField;
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
    TelcCod: TLongintField;
    TelcData: TDateField;
    TelcDes_: TStringField;
    TelcFatto: TLongintField;
    TelcForn: TStringField;
    TelcMaiEffett: TBooleanField;
    TelcReg: TFloatField;
    Teldata: TDateField;
    TelDesMacc: TStringField;
    TelDesPer: TStringField;
    Teldessimp: TStringField;
    Telgaranzia: TStringField;
    Teli2: TLongintField;
    Telnotes: TMemoField;
    Telperiod: TLongintField;
    Telscad: TDateField;
    Teltipop: TLongintField;
    Talleg: TZQuery;
    StringField1: TStringField;
    Tallegcod: TStringField;
    Tallegdescr: TStringField;
    Tallegfinoal: TDateField;
    Tallegimm: TBlobField;
    Tallegluogo: TStringField;
    Tallegr: TLargeintField;
    Tallegriserv: TLongintField;
    Tallegtipo: TStringField;
    Tallegtipofile: TStringField;
    Timer: TTimer;
    Telc: TRxMemoryData;
    TelcCodMacc: TStringField;
    TelcDataScad: TDateField;
    TelcDataScadGds: TStringField;
    Telcdes: TStringField;
    Telcmacch: TStringField;
    Telcnote: TMemoField;
    Telcnotes: TMemoField;
    Telcnr: TIntegerField;
    Telcod: TFloatField;
    Telcperiod: TIntegerField;
    Telcperiodic: TStringField;
    Telcscadenza: TStringField;
    Telctipop: TIntegerField;
    TelcTitolo: TStringField;
    Telmacch: TStringField;
    tsEl: TTabSheet;
    tsGest: TTabSheet;
    zq: TZQuery;
    Tel: TZQuery;
    qCal: TZQuery;
    procedure BannAllegClick(Sender: TObject);
    procedure BcancClick(Sender: TObject);
    procedure BcancRigaClick(Sender: TObject);
    procedure BcercaAllegMaccClick(Sender: TObject);
    procedure BcercaDestClick(Sender: TObject);
    procedure BdesManClick(Sender: TObject);
    procedure BgoManutClick(Sender: TObject);
    procedure BmodClick(Sender: TObject);
    procedure BmodRigaClick(Sender: TObject);
    procedure BnewClick(Sender: TObject);
    procedure BnewRigaClick(Sender: TObject);
    procedure BstampaElClick(Sender: TObject);
    procedure BstDdtClick(Sender: TObject);
    procedure BvisMaccClick(Sender: TObject);
    procedure BvisEffClick(Sender: TObject);
    procedure cbSortMaccChange(Sender: TObject);
    procedure dbgAllCellClick(Column: TColumn);
    procedure dbgAllKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgAllMaccColExit(Sender: TObject);
    procedure dbgLavEditingDone(Sender: TObject);
    procedure dbgMaccCellClick(Column: TColumn);
    procedure dbgManCellClick(Column: TColumn);
    procedure dbgManTitleClick(Column: TColumn);
    procedure dbNavigatorEffClick(Sender: TObject; Button: TDBNavButtonType);
    procedure dbNavClick(Sender: TObject; Button: TDBNavButtonType);
    procedure EartExit(Sender: TObject);
    procedure EartKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EcausExit(Sender: TObject);
    procedure EcausKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EccEff_fltKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EccMaccExit(Sender: TObject);
    procedure EccMaccKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure EccResFltKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ecc_macc_fltKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure RadioButton1Change(Sender: TObject);
    procedure rgTipoSelectionChanged(Sender: TObject);
    procedure TallegAfterPost(DataSet: TDataSet);
    procedure TelCalcFields(DataSet: TDataSet);
    procedure TelcCalcFields(DataSet: TDataSet);
    procedure TelEffCalcFields(DataSet: TDataSet);
    procedure TelMaccCalcFields(DataSet: TDataSet);
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

procedure setDateScad();
begin
  with Fmain do begin
    case rgTipo.ItemIndex of
      0:begin //scadute
        if Eal.Date>0 then
          if Eal.Date>Now then
            mess('per elencare scadenze successive alla data odierna selezionare "tipo: prossime"',_info,_icons);
        Eal.Date:=Now; //fino ad oggi
        if (Edal.Date=0) or (Eal.Date<Edal.Date)  then
          Edal.Date:=Now-_prd;
      end;
      1:begin //prossime
        Edal.Date:=Now+1; //da domani
        if (Eal.Date=0) or (Eal.Date<Edal.Date) then
          Eal.Date:=Now+_prd;
      end;
      2:begin //fatte
        Eal.Date:=Now;
        if (Edal.Date=0) or (Edal.Date>Eal.Date) then
          Edal.Date:=Now-_prd;
      end;
      3:begin //tutto
        if Edal.Date=0 then
          Edal.Date:=Now-_prd;
        if Eal.Date=0 then
          Eal.Date:=Now+_prd;
      end;
    end;
  end;
end;

(* function elenca_manut(stato_: byte): boolean; //0=scaduto 1=prossime 2=eseguito 3=tutto
var
  s,des:WideString;
  oggi,dal,al,cm,dmf:string;
  dat,dal_,al_:TDate;
  p:integer;
  n:longint;
  found:boolean;

  procedure registra(periodic:string; dataScad:TDate);
  begin
    with Fmain do begin
      //deb('3');
      case dayOfWeek(dataScad) of
        1:dataScad:=dataScad+1; //domenica: +1 gg -> lunedì
        7:dataScad:=dataScad+2; //sabato: +2 gg -> lunedì
      end;
      //if (rgTipo.ItemIndex=2) or (dataScad<=Eal.Date) then //2=manut.eff.; al_ then
        with Fmain do begin
          Telc.Insert;
          TelcCodMacc.Value:=qCalMacch.Text;
          TelcMacch.Value:=qCalMacchina.Text;
          TelcNotes.Value:=qCalNotes.AsString;
          TelcTipoP.Value:=qCalTipoP.Value;
          TelcPeriod.Value:=qCalPeriod.Value; //per sort
          TelcScadenza.Value:=periodic;
          TelcDataScad.Value:=dataScad;
          TelcReg.Value:=qCalReg.Value;
          TelcData.Value:=qCalData.Value; //data effettuazione
          TelcFatto.Value:=0;
          //deb('datascad:'+datetostr(datascad));
          TelcTitolo.Value:='dal '+fmtData(dal)+' al '+fmtData(al);
          Telc.Post;
        end;
    end;
  end;

begin
  with Fmain do begin
    if Edal.Date=0 then
      Edal.Date:=Now;
    setDateScad();

    //ctrl:
    dal:=Edal.Text;
    al:=Eal.Text;
    //dal := fmtData(Edal.Text); //al := fmtData(Eal.Text);
    dal_:=Edal.Date;
    al_:=Eal.Date;
    dmf:=trim(EdesManFlt.Text);

    s:='select m.cod,r.macch,m.des as macchina,m.note,r.dessimp,r.scad,r.notes,';
    agg(s,'r.cod as reg,r.f1 as rif,r.data,m.note as noteint,''RIP'' as tbl,'); //f1=rif. a manut. pianif.
    agg(s,'r.tipop,r.period,r.i2');
    agg(s,'from rip r');
    agg(s,'right join macch m on r.macch=m.cod');
    agg(s,'where r.cod>0 and');
    case rgTipo.ItemIndex of
      0,1:agg(s,'coalesce(garanzia,'''')=' + qs('x')); //x=manutenzioni previste
      2:agg(s,condiz_man_eff); //x=manutenzioni effettuate
    end;
    if dmf<>'' then begin
      agg(s,'and (lower(dessimp) like '+qs('%'+lowerCase(dmf)+'%'));
      agg(s,'or lower(notes) like '+qs('%'+lowerCase(dmf)+'%')+')');
    end;
    //agg(s, 'and macch=' + qs('AZ'));
    if trim(EccResFlt.Text)<>'' then
      agg(s,'and m.cc='+qs(EccResFlt.Text));
    if trim(EmaccResFlt.Text)<>'' then
      agg(s,'and r.macch='+qs(EmaccResFlt.Text));
    agg(s,'and (tipop<>1 or period<>1)'); //esclude manut. giornaliere perché elencate a dx
    case rgTipo.ItemIndex of
      0,1:begin
        agg(s,'and (scad is null or scad>=to_date(' + qs(dal) + ',' + qs('dd/mm/yyyy') + '))');
        agg(s,'and (scad is null or scad<=to_date(' + qs(al) + ',' + qs('dd/mm/yyyy') + '))');
        agg(s,'and (data is null)'); //=non eseguita
      end;
      2:begin
        agg(s,'and (data>=to_date(' + qs(dal) + ',' + qs('dd/mm/yyyy') + '))');
        agg(s,'and (data<=to_date(' + qs(al) + ',' + qs('dd/mm/yyyy') + '))');
      end;
    end;
    //agg(s,'order by r.macch,r.scad desc'); ordina dopo

    zgo(qCal,s,'op');
    Telc.Close;
    Telc.Open;
    qCal.First;
    ampiezzaColScad();
    //deb(i2s(qcal.RecordCount)); deb(s);

    while not qCal.EOF do begin
      if qCalReg.Text<>'' then begin
        dat:=Now;
        //dal_; //in mancanza di manut. eseguite, parte dalla data indicata per il calcolo scadenze
        cm:=trim(vts(qCal['macch']));
        if cm='' then
          cm:='§'; //per avere un cod. non vuoto e lanciare query
        s:='select cod,data';
        agg(s,'from rip');
        agg(s,'where cod>0');
        //if quale=2 then //per macch.
        agg(s,'and macch='+qs(cm)); //xMacch));
        agg(s,'and ' + condiz_man_eff);
        if rgTipo.ItemIndex<>2 then
          agg(s,'and f1='+qCalReg.Text); //f1=rif. a manut. pianif.
        agg(s,'order by data desc');
        zgo(zq,s,'op');
        //deb(s); deb(i2s(zq.recordcount));
        if rgTipo.ItemIndex=2 then
          registra('',dat)
        else
          begin

          if not zq.IsEmpty then begin
            zq.First;
            //deb('last:'+vts(zq['data'])+' period:'+qCalPeriod.text);
            dat:=strToDate(vts(zq['data']));
            //se presenti manut. fatte, parte da ultima + periodicità
            p:=qCalPeriod.Value;
            case qCalTipoP.Value of
              0:; //scadenza unica
              1:dat:=dat+qCalPeriod.Value; //gg.
              2:dat:=dat+7*qCalPeriod.Value; //sett.
              3:dat:=dat+30*qCalPeriod.Value; //mesi
              4:dat:=dat+365*qCalPeriod.Value; //anni
            end;
            //deb(datetostr(dat));
          end;

          p:=qCalPeriod.Value;
          case qCalTipoP.Value of
            0:begin
              if (qCalScad.Value>=dal_) and (qCalScad.Value<=al_) then
                registra('scadenza unica',dat);
            end;
            1:begin
              repeat
                if dat>=dal_ then
                  registra(i2s(p)+' giorn'+plur(p,'o','i'),dat);
                dat:=dat+qCalPeriod.Value;
              until dat>al_;
            end;
            2:begin
              repeat
                if (dat>=dal_) and (dat<=al_) then
                  registra(i2s(p) + ' settiman'+plur(p,'a','e'), dat);
                dat:=dat+7*qCalPeriod.Value;
              until dat>al_;
            end;
            3:begin
              repeat
                if (dat>=dal_) and (dat<=al_) then
                  registra(i2s(p)+' mes'+plur(p,'e','i'),dat);
                dat:=dat+30*qCalPeriod.Value;
              until dat>al_;
            end;
            4:begin
              repeat
                if (dat>=dal_) and (dat<=al_) then
                  registra(i2s(p)+' ann'+plur(p,'o','i'),dat);
                dat:=dat+365*qCalPeriod.Value;
              until dat>al_;
            end;
            else
              mess('reg.'+qCalReg.Text+' senza periodicità',_info,_icons);
          end; //case
          registra('',dat);

        end; //else

      end; //if
      qCal.Next;
      //if qcal.eof then deb('eof') else deb('not eof');
    end; //while
    //Telc.SortOnFields('macch;DataScad;tipop;period',false,false);
    Telc.SortOnFields('DataScad;tipop;period;macch',false,false);
    dgResOld.Repaint;
  end; //with
  Result := found;
end; //elenca_manut *)


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

procedure TFmain.RadioButton1Change(Sender: TObject);
begin

end;

procedure TFmain.rgTipoSelectionChanged(Sender: TObject);
begin
  setDateScad();
  Telc.Close; Telc.Open; //cambiando sezione, azzera precedente resoconto
  //elencaManutenzioni();
end;

procedure TFmain.TallegAfterPost(DataSet: TDataSet);
begin
  Talleg.ApplyUpdates;
end;

procedure TFmain.TelCalcFields(DataSet: TDataSet);
begin
end;

procedure TFmain.TelcCalcFields(DataSet: TDataSet);
var
  dow:integer;
begin
  dow:=dayOfWeek(TelcDataScad.Value);
  TelcDataScadGds.Value:=nomeGiorno(dow)+' '+TelcDataScad.AsString;
  TelcDes_.Value:=TelcNotes.AsString;
end;

procedure TFmain.TelEffCalcFields(DataSet: TDataSet);
begin
end;

procedure TFmain.TelMaccCalcFields(DataSet: TDataSet);
begin
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

procedure TFmain.BstampaElClick(Sender: TObject);
var
  s:widestring;
  des:string;
  p,n:integer;
begin
  s:='select m.cod,r.macch,m.des as macchina,m.note,r.dessimp,r.scad,r.notes,r.i2,'; //,m.impdov';
  agg(s,'r.tipop,r.period,r.cod as reg,r.data,');
  agg(s,'case');
  agg(s,'when r.dessimp is null then r.notes');
  agg(s,'when r.dessimp='''' then r.notes');
  agg(s,'else r.dessimp');
  agg(s,'end as manutenzione');
  agg(s,'from rip r');
  agg(s,'right join macch m on r.macch=m.cod');
  agg(s,'where coalesce(garanzia,'''')='+qs('x')); //x=man.previste
  agg(s,'order by r.tipop asc,r.period asc,r.macch asc');
  zgo(qCal,s,'op');

  Telc.Close;
  Telc.Open;
  qCal.First; n:=1;
  while not qCal.Eof do begin
    Telc.Insert;
    TelcNr.Value:=n; inc(n);
    TelcCodMacc.Value:=qCalMacch.Text;
    TelcMacch.Value:=qCalMacchina.Text; //descr.
    TelcTipoP.Value:=qCalTipoP.Value;
    TelcPeriod.Value:=qCalPeriod.Value;
    //case cbSint.Checked of
      //true :
      TelcNotes.Value:=qCalManutenzione.AsString; // DesSimp.AsString;
      //false:TelcNotes.Value:=qCalNotes.AsString;
    //end;

    p:=qCalPeriod.Value;
    case qCalTipoP.Value of
      0:des:='scadenza unica';
      1:des:=i2s(p)+' giorn'+plur(p,'o','i');
      2:des:=i2s(p)+' settiman'+plur(p,'a','e');
      3:des:=i2s(p)+' mes'+plur(p,'e','i');
      4:des:=i2s(p)+' ann'+plur(p,'o','i');
    end; //case

    TelcScadenza.Value:=des;
    TelcNote.Value:=qCalNote.Value;
    Telc.Post;
    qCal.Next;
  end;

  Telc.SortOnFields('macch;tipop;period;scadenza',false,false);
  //frDdt.PrepareReport;
  //frDdt.ShowPreparedReport;
  frDdt.ShowReport;
end;

procedure TFmain.BstDdtClick(Sender: TObject);
begin
  frDdt.ShowReport;
end;

procedure visAlleg(tipo:char; cod:string; r:longint);
var
  fn,ext:string;
  s:widestring;
  e:integer;
  x:byte;
  ok:boolean;
  f:file;
begin
  with Fmain do begin
    s:='select cod,r,tipo,descr,file as luogo, imm,certif as riserv,d1 as finoal,cat as tipofile';
    agg(s,'from docs');
    agg(s,'where tipo='+qs(tipo)+' and cod='+qs(cod)+' and r='+i2s(r));
    zgo(Talleg,s,'op');
    if Talleg.IsEmpty then begin
      mess('nessun allegato associato',_info,_icons);
      exit;
    end;
    x:=0;
    repeat
      try
        ext:=TallegTipoFile.Text;
        //if lowercase(ext)='lsx' then ext:='xlsx';
        fn:=pLoc+'\immagine'+i2s(x)+'.'+ext;
        ok:=true;
        if fileExists(fn) then begin
          {$I-}
          assignFile(f,fn);
          erase(f);
          {$I+}
          ok:=IOResult=0;
        end;
        if ok then begin
          {$I-}
          TallegImm.SaveToFile(fn);
          {$I+}
          ok:=IOResult=0;
          if ok then begin
            e:=ShellExecute(Handle,'open',PChar(fn),nil,nil,SW_HIDE);
            if not (e in [0,42]) then begin
              shellErr(e);
              mess('impossibile visualizzare allegato',_info,_icons);
            end;
          end;
        end;
      finally
        inc(x);
      end;
    until ok or (x>=99);
    if not ok then
      mess('troppi documenti aperti - impossibile visualizzare','attenzione',mb_ok+mb_iconWarning);
  end;
end;

procedure TFmain.BvisMaccClick(Sender: TObject);
begin
  //visAlleg('M',fd.TmaccCod.Text,qDocMaccR.Value);
end;

procedure TFmain.BvisEffClick(Sender: TObject);
begin
end;

procedure TFmain.cbSortMaccChange(Sender: TObject);
begin
end;

procedure TFmain.dbgAllCellClick(Column: TColumn);
begin
end;

procedure TFmain.dbgAllKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  mess('scrivere nel riquadro sottostante',_info,_icons);
end;

procedure TFmain.dbgAllMaccColExit(Sender: TObject);
var
  s:widestring;
begin
end;

procedure TFmain.dbgLavEditingDone(Sender: TObject);
begin
end;

procedure TFmain.dbgMaccCellClick(Column: TColumn);
begin
end;

procedure TFmain.dbgManCellClick(Column: TColumn);
begin
  //fd.Tmanut.Locate('cod',TelCod.Value,[]);
end;

procedure TFmain.dbgManTitleClick(Column: TColumn);
begin
end;

procedure TFmain.dbNavigatorEffClick(Sender: TObject; Button: TDBNavButtonType);
begin
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

procedure TFmain.EccEff_fltKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
end;

procedure TFmain.EccMaccExit(Sender: TObject);
begin
end;

procedure TFmain.EccMaccKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
end;

procedure TFmain.EccResFltKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
end;

procedure TFmain.Ecc_macc_fltKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
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

procedure TFmain.BcercaAllegMaccClick(Sender: TObject);
var
  s:widestring;
  alleg_,macc_:string;
begin
  alleg_:=''; macc_:='';
  repeat
    if not inputQuery(_info,'descrizione allegato',alleg_) then
      exit;
  until trim(alleg_)<>'';
  if not inputQuery(_info,'dato facoltativo: macchina/impianto',macc_) then
    exit;
  s:='select m.cod,m.des,d.descr'; //d.tipo,d.cod,d.r,d.descr,d.file as luogo,d.certif as riserv,d.d1 as finoal,d.cat as tipofile';
  agg(s,'from docs d');
  agg(s,'left join macch m on d.cod=m.cod');
  agg(s,'where d.tipo=''M''');
  agg(s,'and lower(d.descr) like ('+qs('%'+alleg_+'%')+')');
  if trim(macc_)<>'' then
    agg(s,'and lower(m.des) like ('+qs('%'+macc_+'%')+')');
  agg(s,'order by m.des,d.descr');
  elenca(s,1,'elenco',['macchina','allegato']);
  //if not esc_ then
    //if fd.Tmacc.Locate('cod',helpCod_,[]) then
      //initFieldsMacc();
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

procedure TFmain.BannAllegClick(Sender: TObject);
begin
  Talleg.Cancel;
end;

procedure TFmain.BgoManutClick(Sender: TObject);
var
  s:widestring;
  mf,dmmf,dmf:string;
begin
  s:='select r.cod,data,r.macch,garanzia,notes,dessimp,scad,period,tipop,r.i2';
  agg(s,'from rip r');
  agg(s,'left join macch m on r.macch=m.cod');
  agg(s,'where coalesce(garanzia,'''')='+qs('x')); //x=manutenzioni previste
  if mf<>'' then
    agg(s,'and lower(macch)='+qs(lowerCase(mf)));
  if dmmf<>'' then
    agg(s,'and lower(m.des) like '+qs('%'+lowerCase(dmmf)+'%'));
  //if trim(Eprogr_pian_flt.Text)<>'' then agg(s,'and cod='+Eprogr_pian_flt.Text);
  if dmf<>'' then begin
    agg(s,'and (lower(dessimp) like '+qs('%'+lowerCase(dmf)+'%'));
    agg(s,'or lower(notes) like '+qs('%'+lowerCase(dmf)+'%')+')');
  end;
  agg(s,'order by tipop asc,cod desc');
  zgo(Tel,s,'op');
  Tel.First;
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

