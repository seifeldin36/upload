#include <iostream>
using namespace std;
int wn;
struct WorkOuts
{
 int ID;
 string name;
 float duration;
 string exercise[100]   
 int exnum;
}
struct Client 
{
 int ID;
 string username;
 string password;
 string progresslogs[100];
};
void client()
{
    Client p;
    int choice;
    int ch2;
    cout << "1 : Show Workout plan."<< endl;
    cout << "2 : Recored Completed Workouts."<< endl;
    cout << "3 : Enter Your measrment." << endl;
    cin >> choice;
    switch(choice)
    {
        case 1 : for(int i = 0;i<wn;i++)
        {
        cout << "The Workout name is : "<<w[i].name<<endl;
        cout << "The Workout ID is : "<<w[i].ID<<endl;
        for (int j=0;j<w[i].exnum;j++)
        {
         cout <<"Exercises "<<j+1<<" : "<< w[i].exercise[j]<<endl;
        }
        cout << "The Workout duration is : "<<w[i].duration <<endl;
        cout << endl << endl;
        }
        break;
        case 2 :  
        while(true)
        {
            for(int i = 0;i<wn;i++)
        {
         cout <<"Workout #"<<i+1<<" : "<< w[i].name<<endl;
        }
        for(int i = 0;i<wn;i++)
        {
         cin.ignore();
         getline(cin,p.progresslogs[i]);
        }
            char r;
            cout << "Do You Want To Record another workout? (y/n) : ";
            cin >> r;
            if (r==y)
            continue;
             
            else break;
        }
        break;

    }

}
void trainer()
{
    int choice;
    Client p;
    cout << "1 : Show Clients Informations."<< endl;
    cout << "2 : Create Client's Workouts."<< endl;
    cout << "3 : Show Progression Sheets of Clients." << endl;
    cin >> choice;
    switch (choice)
    {
        case 1 : 

        case 2 :  WorkOuts();
        break;
        break;
        case 3 : for(int i = 0;i<wn;i++)
        {
         cout <<"Workout #"<<i+1<<" : "<< p.progresslogs[i]<<endl;
        }
    }

}
void WorkOuts()
{
    WorkOuts w[100];
    cout << "How Many Workout plans you want to create ? : ";
    cin >> wn;
    cin.ignore();
    for(int i = 0;i<wn;i++)
    {
        cout <<"Workout #"<<i+1<<endl;
        cout <<"Enter The Workout name : ";
        getline(cin,w[i].name);
        cout <<"Enter The Workout ID : ";
        cin >> w[i].ID;
        cout << "how many exrcises in this work out? : ";
        cin >> w[i].exnum;
        cin.ignore();
        cout <<"Enter The Excersis : ";
        for (int j=0;j<w[i].exnum;j++)
        {
         getline(cin,w[i].exercise[j]);
        }
        cout << "how much time do the workout take? (in minutes) : ";
        cin >> w[i].duration;
        cin.ignore();
        cout << endl << endl;
        
    }
}
int main()
{

}
