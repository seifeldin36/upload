#include <iostream>
#include<string>
using namespace std;
int wn;
int counter=0;
int tempchoice;
struct workOuts
{
    int ID;
    string name;
    float duration;
    string exercise[100];
    int exnum;
};
struct Client
{
    int ID;
    string username;
    string password;
    string progresslogs[100];
    string name; 
    float weight;
    float hight;
    int age; 
};
workOuts w[100];
Client p;
void WorkOuts()
{
    
    cout << "How Many Workout plans you want to create ? : ";
    cin >> wn;
    cin.ignore();
    for (int i = 0;i < wn;i++)
    {
        if(w[i].name.size()!= 0 )
        {
        i++;
        }
        cout << "Workout #" << i + 1 << endl;
        cout << "Enter The Workout name : ";
        getline(cin, w[i].name);
        cout << "Enter The Workout ID : ";
        cin >> w[i].ID;
        cout << "how many exrcises in this work out? : ";
        cin >> w[i].exnum;
        cin.ignore();
        cout << "Enter The Excersis : ";
        for (int j = 0;j < w[i].exnum;j++)
        {
            getline(cin, w[i].exercise[j]);
        }
        cout << "how much time do the workout take? (in minutes) : ";
        cin >> w[i].duration;
        cin.ignore();
        cout << "--------------------------------------------------------------------"<<endl;
        counter++;
    }
}
void client()
{
    int choice;
    //int ch2;
    cout << "1 : Show Workout plan." << endl;
    cout << "2 : Recored Completed Workouts." << endl;
    cout << "3 : Enter Your information." << endl;
    cout<< "Enter choice : ";
    cin >> choice;
    cout << "--------------------------------------------------------------------"<<endl;
    
    switch (choice)
    {
        case 1:
        for (int i = 0;i <counter;i++)
        {
        cout << "The Workout name is : " << w[i].name << endl;
        cout << "The Workout ID is : " << w[i].ID << endl;
        for (int j = 0;j < w[i].exnum;j++)
        {
            cout << "Exercises " << j + 1 << " : " << w[i].exercise[j] << endl;
        }
        cout << "The Workout duration is : " << w[i].duration << endl;
        cout << "--------------------------------------------------------------------"<<endl;
        }
          break;

          case 3 : cout << "Enter your Name : ";
        cin.ignore();
        getline(cin , p.name );
        cout << "Enter your ID : ";
        cin >> p.ID;
        cout << "Enter your age : ";
        cin >> p.age;
        cout << "Enter your weight : ";
        cin >> p.weight;
        cout << "Enter your hight : ";
        cin >> p.hight;
        cout << "--------------------------------------------------------------------"<<endl;
        break;

        case 2 : cout << "--------------------------------------------------------------------"<<endl;
        for (int i = 0;i < counter;i++)
        {
            cout << "Workout #" << i + 1 << " : " << w[i].name << endl;
            for (int j = 0;j < w[i].exnum;j++)
            {
            cout << "Exercise #" << j + 1 << " : " << w[i].exercise[j] << endl;
            }
            cout << "--------------------------------------------------------------------"<<endl;
        }
               
        cout << "How Many exercises you finshed? : ";
        cin >> tempchoice;
        cin.ignore();
        int i =0;
        while (i < tempchoice)
            {
                    cout << "Exercise #"<<i+1<<": ";
                if (p.progresslogs[i].empty())
                {
                   getline(cin, p.progresslogs[i]);
                   i++;
                }
                else i++;
           }
           cout << "--------------------------------------------------------------------"<<endl;
        break;
    }

}
void trainer()
{
    int choice;
    cout << "1 : Show Clients Informations." << endl;
    cout << "2 : Show Progression Sheets of Clients." << endl;
    cout << "3 : Create Client's Workouts." << endl;
   ;
    cin >> choice;
    switch (choice)
    {
      case 1:cout << "--------------------------------------------------------------------"<<endl;
       cout << "Name : "<< p.name << endl;
      cout << "ID : "<< p.ID << endl;
      cout << "Age : "<< p.age << endl;
      cout << "hight : "<< p.hight <<" cm"<< endl;
      cout << "weight : "<< p.weight <<" kg" << endl;
      cout << "--------------------------------------------------------------------"<<endl;
      break;

      case 2: cout << "--------------------------------------------------------------------"<<endl;
    for (int i = 0;i < tempchoice;i++)
      {
        cout << "Exercis #" << i + 1 << ':' << p.progresslogs[i] << endl;
      }
      cout << "--------------------------------------------------------------------"<<endl;
        break; 
    
    case 3:  WorkOuts();
    break;
    }
}
int main()
{
    while (true)
    {
        cout << "-----------------------------Fitness system------------------------------"<<endl;
        cout << "1 : Client " << endl;
        cout << "2 : Trainer " << endl;
        cout << "Enter choice : ";
        int q;
        cin >> q;
        cout << "-------------------------------------------------------------------------"<<endl;    
        switch (q)
        {
        case 1: client();
            break;
        case 2:trainer();
            break;
        }
        char r;
        cout << "Do You Want To Record another workout? (y/n) : ";
        cin >> r;
        if (r == 'y')
            continue;

        else break;
    }
 
    
}
    
