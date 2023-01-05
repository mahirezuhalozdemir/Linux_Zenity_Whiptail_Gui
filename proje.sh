#!bin/bash
user_name="admin"
password="123"
file="phonenumbers.txt"
file2="temp.txt"
Add()
{
zenity --forms --title="Add a Number" --width=500 --height=500  \
        --text="<big><big>New Connect</big></big>" \
        --separator="-" \
        --add-entry="Name" \
        --add-entry="LastName" \
        --add-entry="Phone Number"  >> $file
case $? in
        0)
                grep -v -e '--' $file > $file2 
                mv $file2  $file
                Added
                ;;
        1)
                Notadded
                Menu
                ;;
        -1)
                exit 0
                ;;
esac
}
Notadded()
{
zenity --info --title "Not Added" --width=100 --height=50 --text="<span foreground='#ff6e31'><big><big>Not Added</big></big></span>"
}

Added()
{
zenity --info --title "Add Contact"  --width=100 --height=50  --text="<span foreground='#FF6E31'><big><big>Check the contact list</big></big></span>"
Menu
}


Delete()
{
delete_person=$(whiptail --inputbox "Who Do You Want To Delete?" 10 40 --title "Delete a Person" 3>&1 1>&2 2>&3)
if [ $? = 0 ]; then
    if [ "$delete_person" != "" ]; then
         grep -v -e  $delete_person $file > $file2 
         mv $file2  $file
        {
         for i in {0..100..10}
         do
                sleep 0.1
                echo $i
         done
        } | whiptail --gauge "Please wait while deleting" 8 80 0
        zenity --info --title "Deleted"  --text="contact was deleted"
        List
    else
        zenity --info --width=300 --height=200 --title "Not Found"  --text="contact not found"
        Menu
    fi
else
        zenity --info --width=300 --height=200 --title "Error" --text="canceled"
        Menu
fi
}

List()
{
cat $file | tr '-' '\n' |         
  zenity --list --title "Contact List" --width=500 --height=500 \
    --column=Name \
    --column=Lastname \
    --column=Number  
if [ $? = 0 ] ; then
        Menu
else
        Menu
fi
}

Reset()
{
zenity --question  --title "warning" --text="<span foreground='#FF6E31'><big><big>Are you sure</big></big></span>"
if [ $? = 0 ] ; then
        truncate -s 0  $file
        zenity --warning --title "warning" --text="<span foreground='#FF6E31'><big><big>You delete the all contacts</big></big></span>"
        Menu
else
        Menu
fi
}


Menu()
{
choice=$(whiptail --title "Menu" --menu "Choose an option" 30 80 20  \
"Add:" "Add a person" \
"Delete:" "Delete a person" \
"List:" "List all people" \
"Reset:" "Delete all contacts" \
"Exit:" "Exit" 3>&1 1>&2 2>&3)

if [ "$choice"  == "Add:" ] ; then
        Add
elif [ "$choice" == "Delete:" ] ; then
        Delete
elif [ "$choice" == "List:" ] ; then
        List
elif [ "$choice" == "Reset:" ] ; then
        Reset
elif [ "$choice" == "Exit:" ] ; then
        exit 0
else
        exit 0
fi
}

Login() 
{
user_name="admin"
password="123"
entry_username=$(whiptail --inputbox "please enter your username" 9 90 --title "user name" 3>&1 1>&2 2>&3)
entry_password=$(whiptail --passwordbox "please enter your password" 9 90 --title "password" 3>&1 1>&2 2>&3)
case $? in 
        0)
                if [ $user_name == $entry_username ];then
                        if [ $password == $entry_password ];then
                                Menu
                        else
                                zenity --warning --width=100 --height=50 --text="<big><big>wrong password</big></big>"
                                exit 0
                        fi
                else
                        zenity --warning  --width=100 --height=50 --text="<big><big>wrong username</big></big>"
                        exit 0
                fi

                ;;      
        1)
                exit 0
                ;;
        -1)
                exit 0
                ;;
esac
}
Login

