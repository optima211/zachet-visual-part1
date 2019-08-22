unit Unit1;
  
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Menus;

const
  nMax = 10;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    StringGrid1: TStringGrid;
    Label2: TLabel;
    StringGrid2: TStringGrid;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    BStart: TButton;
    BMax: TButton;
    MainMenu1: TMainMenu;
    MStart: TMenuItem;
    MMax: TMenuItem;
    MRows: TMenuItem;
    MColumns: TMenuItem;
    MAbout: TMenuItem;
    procedure MStartClick(Sender: TObject);
    procedure MMaxClick(Sender: TObject);
    procedure MRowsClick(Sender: TObject);
    procedure MColumnsClick(Sender: TObject);
    procedure MAboutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    n, m: Integer;
    a: array[1..nMax, 1..nMax] of Integer;
    f: array[1..nMax] of Integer;
    procedure ClearStringGrids;
    procedure FillA;
    procedure PrintA;
    procedure PrintF;
    function FindMax(i: Integer): Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.ClearStringGrids;
var
  i, j: Integer;
begin
  for i := 0 to nMax - 1 do
    for j := 0 to nMax - 1 do
      StringGrid1.Cells[i, j] := '';
  for j := 0 to nMax - 1 do
    StringGrid2.Cells[j, 0] := '';
end;


procedure TForm1.FillA;
var
  i, j: Integer;
begin
  Randomize();
  for i := 1 to n do
    for j := 1 to m do
      a[i, j] := Random(100);
end;


procedure TForm1.PrintA;
var
  i, j: Integer;
begin
  for i := 1 to n do
    for j := 1 to m do
      StringGrid1.Cells[j - 1, i - 1] := IntToStr(a[i, j]);
end;


procedure TForm1.PrintF;
var
  i: Integer;
begin
  for i := 1 to n do
    StringGrid2.Cells[i - 1, 0] := IntToStr(f[i]);
end;


function TForm1.FindMax(i: Integer): Integer;
var
  j: Integer;
  max: Integer;
begin
  max := a[i, 1];
  for j := 2 to m do
    if a[i, j] > max then
      max := a[i, j];
  Result := max;
end;


procedure TForm1.MStartClick(Sender: TObject);
begin
  n := StrToInt(Edit1.Text);
  m := StrToInt(Edit2.Text);
  ClearStringGrids;
  StringGrid1.RowCount := n;
  StringGrid1.ColCount := m;
  StringGrid2.ColCount := n;
  FillA;
  PrintA;
end;


procedure TForm1.MMaxClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 1 to n do
    f[i] := FindMax(i);
  PrintF;
end;


procedure TForm1.MRowsClick(Sender: TObject);
var
  s: String;
begin
  s := IntToStr(n);
  if InputQuery('Строки', 'Введите строки!', s) then begin
    n := StrToInt(s);
    Edit1.Text := s;
  end;
end;


procedure TForm1.MColumnsClick(Sender: TObject);
var
  s: String;
begin
  s := IntToStr(m);
  if InputQuery('Столбцы', 'Введите столбцы!', s) then begin
    m := StrToInt(s);
    Edit2.Text := s;
  end;
end;


procedure TForm1.MAboutClick(Sender: TObject);
begin
  ShowMessage('Недзелюк М.К., ПБТ-82');
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
  n := 8;
  m := 8;
  Edit1.Text := IntToStr(n);
  Edit2.Text := IntToStr(m);
end;

end.
