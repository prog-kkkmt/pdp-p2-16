unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    roomIndex: integer;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Panel1.Visible := False;
  Panel2.Visible := True;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Panel2.Visible := False;
  Panel3.Visible := True;

  roomIndex := ListBox1.Items.Count;

  ListBox1.AddItem(Edit2.Text, Edit2);
  ListBox2.AddItem(Edit1.Text, Edit1);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Panel2.Visible := True;
  Panel3.Visible := False;

  ListBox1.Items.Delete(roomIndex);
  ListBox2.Clear;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Halt;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Panel1.Visible := True;
  Panel2.Visible := False;
end;

end.

