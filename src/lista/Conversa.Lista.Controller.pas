// Daniel Araujo - 10/07/2020
unit Conversa.Lista.Controller;

interface

uses
  System.SysUtils,
  System.DateUtils,
  System.Classes,
  Data.DB,
  Datasnap.DBClient,

  Conversa.Base.Controller,
  Conversa.DataSet,
  Conversa.Consulta,

  Conversa.Sessao.Item.Controller;

type
  TConversaListaController = class(TConversaBaseController)
    cdsConversa: TClientDataSet;
    cdsConversaid: TIntegerField;
    cdsConversadescricao: TStringField;
    cdsConversatipo: TIntegerField;
    cdsConversamensagem_id: TIntegerField;
    cdsConversaconteudo: TStringField;
    cdsConversamsg_incluido_em: TDateTimeField;
    cdsConversaqtd: TLargeintField;
    cdsConversatipo_confirmacao: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TConversaListaController.DataModuleCreate(Sender: TObject);
begin
  cdsConversa.WSCreate(WebSocket, 'conversa');
end;

end.
