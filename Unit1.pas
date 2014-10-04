unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Menus;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const
  F1ToF12: array[0..11] of string = ('F1', 'F2', 'F3', 'F4','F5','F6'
                                    ,'F7', 'F8', 'F9', 'F10','F11','F12');
var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  KeyPreview:=True;         // 使用快捷設定需開啟
  TabSheet1.TabVisible:=False;    TabSheet2.TabVisible:=False;  //All Page關閉
  PageControl1.ActivePage:= TabSheet1;   //Page激活
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 // if ( Key > (VK_F1-1) ) and( Key < (VK_F12))then  //VK_F1~VK_F12 112~123
 // begin                                            //ASCII: A~Z->65~90
     case  Key of
      VK_F1:   PageControl1.ActivePage:= TabSheet1;
      VK_F2:   PageControl1.ActivePage:= TabSheet2;
      VK_ESCAPE: Form1.Close;
{     else
      ShowMessage(Chr(Key));
 }    end;
end;
end.
