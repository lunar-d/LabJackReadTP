//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "LabJackUD.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
int buton=1;
int Entrees[8];
TShape *LED[8];
long value ;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{

  LED[0]=Shape8;
  LED[1]=Shape7;
  LED[2]=Shape6;
  LED[3]=Shape5;
  LED[4]=Shape4;
  LED[5]=Shape3;
  LED[6]=Shape2;
  LED[7]=Shape1;
  
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ON1Click(TObject *Sender)
{
//on
        Label8->Caption="SYSTEM ACTTIF";
        Label8->Font->Color=clGreen;
        Label8->Color=clBtnFace;
        buton=0;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::OFF1Click(TObject *Sender)
{
//off
        Label8->Caption="SYSTEM INACTIF";
        Label8->Font->Color=clRed;
        Label8->Color=clBtnFace;
        buton=1;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::lirevaleur(TObject *Sender)
{
	if (buton==0){
		long LabJCK,error,errorcode,Channel,State;
		LJ_HANDLE Handle;
		long LabJCK_error=OpenLabJack (LJ_dtU3, LJ_ctUSB,"1",true,&Handle);
		if (!LabJCK_error){
			Label8->Caption ="READY";
			//Aquisition DG
			for(int i=0;i<8;i++){
				long vall;
				eDI(Handle,i+8,&vall);
				Entrees[i]=vall;
				if(Entrees[i]==0){
					LED[i]->Brush->Color = clRed;
				}
                                else  LED[i]->Brush->Color = clGreen;
			}
		}
		else{
			Label8->Caption = "erreur 1";
			Label8->Font->Color=clRed;
		}
	}
}
//---------------------------------------------------------------------------

