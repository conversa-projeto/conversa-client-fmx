// Daniel Araujo - 10/07/2020
unit Conversa.Lista.Controller;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Conversa.Base.Controller,
  Conversa.Conexao.Banco_dados;

type
  TConversaListaController = class(TConversaBaseController) 
    qryConversa: TFDQuery;
    qryConversaid: TFDAutoIncField;
    qryConversadescricao: TStringField;
    qryConversatipo: TIntegerField;
    qryConversamensagem_id: TIntegerField;
    qryConversaconteudo: TStringField;
    qryConversadata: TDateTimeField;
    qryConversaqtd: TLargeintField;
    qryConversatipo_confirmacao: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
