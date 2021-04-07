unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  procedure KvadrKoren(a,b,c:real; var x1,x2:real);
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var a1,b1,c1,x1,x2:real;
begin
a1:=1;
b1:=2;
c1:=-3;
KvadrKoren(a1,b1,c1,x1,x2);
InputBox('Процедура квадр', 'корни', 'х1='+FloatToStr(x1)+'x2='+FloatToStr(x2));
Showmessage('a1='+FloatToStr(a1)+'b1='+FloatToStr(b1)+'c1='+FloatToStr(c1));
end;

procedure TForm1.KvadrKoren(a, b, c: real; var x1, x2: real);
var D:real;
begin
D:=sqr(b)-4*a*c;
if D<0 then begin ShowMessage('Корней нет');
exit;
end;
x1:=(-b+sqrt(D))/(2*a);
x2:=(-b-sqrt(D))/(2*a);
end;

end.
