//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit3.h"
#include "Unit4.h"
#include "Unit6.h"
#include "ToChtoChutRabotaet.h"




//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm3 *Form3;

ThreadClass *SecondProcess = new ThreadClass(true);

//---------------------------------------------------------------------------
__fastcall TForm3::TForm3(TComponent* Owner)
	: TForm(Owner)
{

			 Form3->Label9->Visible=false;
			 Form3->Label10->Visible=false;
			 Form3->Label11->Visible=false;
			 Form3->Label12->Visible=false;
			 Form3->Label8->Visible=false;
			 Form3->Label7->Visible=false;
			 Form3->Label6->Visible=false;
			 Form3->Label5->Visible=false;
			 Form3->Label4->Visible=false;
			 //SecondProcess->Resume();


}
//---------------------------------------------------------------------------
void __fastcall TForm3::Button2Click(TObject *Sender)
{
 Form1->Edit1->Text="";
 Form1->Show();
 SecondProcess->Suspend();

}
//---------------------------------------------------------------------------

void __fastcall TForm3::Button1Click(TObject *Sender)
{

 //SecondProcess->Resume();


}
//---------------------------------------------------------------------------

void __fastcall TForm3::Button3Click(TObject *Sender)
{
 Form6->Edit1->Text="";
 Form6->Show();
 //Form3->Close();
 SecondProcess->Suspend();


}
//---------------------------------------------------------------------------

void __fastcall TForm3::FormCreate(TObject *Sender)
{

 Form3->Color=clWhite;
 SecondProcess->Resume();

}
//---------------------------------------------------------------------------

void __fastcall TForm3::FormClose(TObject *Sender, TCloseAction &Action)
{
  //SecondProcess->Suspend();
}
//---------------------------------------------------------------------------

void __fastcall TForm3::FormActivate(TObject *Sender)
{


 SecondProcess->Resume();
}
//---------------------------------------------------------------------------

