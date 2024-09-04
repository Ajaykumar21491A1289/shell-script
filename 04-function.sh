ID=$(id -u)
PACKAGE(){
    echo "please enter your package name"
    read PACK

    yum install $PACK -y

}
VALIDATE(){
    if [  $? -ne 0  ]
    then
        echo "Error"
        exit 1
    else
        echo "Installed Scuccess"
    fi    
}
if [ $ID -ne 0 ]
then 
    echo "Error"
    exit 1
else 
    echo "You are root user"
fi

PACKAGE

VALIDATE


