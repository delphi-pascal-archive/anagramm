unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Scores: TLabel;
    Seconds: TLabel;
    Label1: TLabel;
    Timer1: TTimer;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
var f,q:textfile;
    score,z,t,i,j,time:integer;
    a,b,c,d:boolean;
    s,w,x:string;

procedure TForm1.FormCreate(Sender: TObject);
begin
Randomize;
timer1.Enabled:=False;
assignfile(f,'Dictionary.txt');
reset(f);
label1.Caption:='Нажмите "Задание"';
z:=0;
while not eof(f) do
  begin
  readln(f,s);
  z:=z+1;
  end;
closefile(f);
Score:=0;
a:=true;
b:=true;
c:=false;
d:=false;
Scores.Caption:=inttostr(Score);
edit1.Clear;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Score:=0;
timer1.Enabled:=false;
label1.Caption:='Нажмите "Задание"';
Button3.Caption:='Задание';
a:=true;
b:=true;
c:=false;
d:=false;
Scores.Caption:=inttostr(Score);
edit1.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if b=true then begin
Button3.Caption:='Следующий';
b:=false;
time:=60;
Seconds.Caption:=Inttostr(time);
timer1.Enabled:=true;
end;
c:=True;
d:=true;

s:='';
w:='';
if a=false then Score:=Score-10;
time:=time-5;
assignfile(f,'Dictionary.txt');
reset(f);
j:=random(z)+1;
for i:=1 to j do
readln(f,s);

j:=length(s);
for i:=1 to j do w:=w+'1';

for i:=1 to length(s) do
  repeat
  t:=0;
  j:=random(length(s))+1;
  if w[j]='1' then
    begin
    w[j]:=s[i];
    t:=1;
    end;
  until t=1;

Label1.Caption:=w;
closefile(f);
a:=false;
Scores.Caption:=inttostr(Score);
edit1.Text:='';
Edit1.SetFocus;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if c=true then begin
x:=s[1];
for i:=2 to length(s)-1 do
x:=x+'_';
x:=x+s[length(s)];
edit1.Text:=x;
Score:=Score-5;
Scores.Caption:=inttostr(Score);
c:=false;
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if b=false then begin
if d=true then begin
w:=edit1.Text;
if a=false then
  if s=w then
    begin
    showmessage('Верно!');
    a:=true;
    Score:=Score+length(s);
    time:=time+length(s)*3;
    Seconds.Caption:=Inttostr(time);
    end
  else
    begin
    showmessage('Неверно! Ответ: '+s);
    a:=true;
    Score:=Score-10;
    time:=time-5;
    Seconds.Caption:=Inttostr(time);
    end;
Scores.Caption:=inttostr(Score);
end;
if time<=0 then begin
timer1.Enabled:=False;
ShowMessage('Время вышло...');
assignFile(q,'Option.qw');
Reset(q);
readln(q,i);
if Score>i then begin
ShowMessage('Новый рекорд');
rewrite(q);
writeln(q,Score);
end;
closefile(q);
Button4.Click;
end
else Button3.Click;
end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
time:=time-1;
Seconds.Caption:=Inttostr(time);
if time<=0 then begin
timer1.Enabled:=False;
ShowMessage('Время вышло...');
assignFile(q,'Option.qw');
Reset(q);
readln(q,i);
if Score>i then begin
ShowMessage('Новый рекорд');
rewrite(q);
writeln(q,Score);
end;
closefile(q);
Button4.Click;
end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then Button1.Click;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
assignFile(q,'Option.qw');
Reset(q);
readln(q,i);
ShowMessage('Рекорд: '+inttostr(i));
Closefile(q);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
if Score>20 then begin
Score:=Score-20;
Time:=time+10;
Scores.Caption:=inttostr(score);
Seconds.Caption:=inttostr(time);
end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
ShowMessage('Анаграммы версия 2.2'+#13+'Создал: Шуда Михаил Андреевич'+#13+
'Студент ПФ СПбГУАП группы 2ВМ-09'+#13+'ICQ: 492522631'+#13+'Все права защищены');
end;

end.
