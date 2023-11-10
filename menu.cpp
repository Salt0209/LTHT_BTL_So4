#include <iostream.h>
#include <conio.h>
extern CD();
extern findMin();
extern draw();
void main()
{
    int chon;
    int check =0;
    L1:
    do{
        clrscr();
        cout<<"\n\t DE TAI BTL SO 4";
        cout<<"\n\tCAC CHUC NANG CD, SO BE NHAT, DUONG THANG";
        cout<<"\n\t1 _ Chuc nang CD";
        cout<<"\n\t2 _ Tim gia tri be nhat cua day so nguyen";
        cout<<"\n\t3 _ Ve duong thang";
        cout<<"\n\t4 _ Thoat ve DOS";
        cout<<"\n\tHay chon:";
        cin>>chon;
        switch (chon)
        {
        case 1:
            CD();
            break;
        case 2:
            findMin();
            break;
        case 3:
            draw();
            break;
        case 4:
            asm {
                mov ah,4ch;
                int 21h;
            }
            break;
        default:
            cout<<"Vui long nhap tu 1 den 4 !";
            break;
        }
    }while (check==0);
}


