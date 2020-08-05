#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Backtitle here"
TITLE="Title here"
MENU="Choose one of the following options:"

OPTIONS=(1 "Creat AWS Instance"
         2 "Creat AWS Instance and protect credintials"
         3 "Exit")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)
: '
======================================================
Cloud		Zone		Name	Version	Arch	Instance Type	Release
Amazon AWS	eu-west-1	focal	20.04	amd64	hvm-ssd		20200729	ami-0f1d11c92a9467c07
Amazon AWS	eu-west-1	focal	20.04	arm64	hvm-ssd		20200729	ami-0fa1efaadcbd8f3de
Amazon AWS	eu-west-1	bionic	18.04	amd64	hvm-ssd		20200729	ami-09652a7c0d6ff41a3
Amazon AWS	eu-west-1	bionic	18.04	amd64	hvm-instance	20200729	ami-0acf10ecd4edb3588
=========================================================
Cloud		Zone		Name	Version	Arch	Instance Type	Release
Amazon AWS	eu-west-2	bionic	18.04	arm64	hvm-ssd		20190212.1	ami-074b5df8ae4f0657c
Amazon AWS	eu-west-2	bionic	18.04	arm64	hvm-ssd		20190617	ami-035f7bc31ad78e3f2
Amazon AWS	eu-west-2	bionic	18.04	arm64	hvm-ssd		20190627.1	ami-0c06ea2f6926574cc
Amazon AWS	eu-west-2	bionic	18.04	arm64	hvm-ssd		20190814	ami-08e154685c0a4ff29
================================================================
Cloud		Zone		Name	Version	Arch	Instance Type	Release
Amazon AWS	eu-west-3	bionic	18.04	arm64	hvm-ssd		20190212.1	ami-0f5c7de49c06a54b1
Amazon AWS	eu-west-3	bionic	18.04	arm64	hvm-ssd		20190617	ami-0d5373d441dd8d13e
Amazon AWS	eu-west-3	bionic	18.04	arm64	hvm-ssd		20190627.1	ami-0a113c962fda34f20
================================================================
Cloud		Zone		Name	Version	Arch	Instance Type	Release
Amazon AWS	eu-north-1	bionic	18.04	arm64	hvm-ssd		20181120	ami-02a0db85d0d519b80
Amazon AWS	eu-north-1	bionic	18.04	arm64	hvm-ssd		20181121	ami-0cce9adf562106b82
Amazon AWS	eu-north-1	bionic	18.04	arm64	hvm-ssd		20190212.1	ami-ae931ad0
Amazon AWS	eu-north-1	bionic	18.04	arm64	hvm-ssd		20190617	ami-b537bfcb
================================================================
Cloud		Zone		Name	Version	Arch	Instance Type	Release
Amazon AWS	eu-south-1	bionic	18.04	arm64	hvm-ssd		20200521	ami-03c8fc1f906e6f659
Amazon AWS	eu-south-1	bionic	18.04	arm64	hvm-ssd		20200610	ami-02f4c815a04639537
Amazon AWS	eu-south-1	bionic	18.04	arm64	hvm-ssd		20200626	ami-084a8197e95caa152
Amazon AWS	eu-south-1	bionic	18.04	arm64	hvm-ssd		20200708.1	ami-0a8efd6241a8fd568
================================================================
Cloud		Zone		Name	Version	Arch	Instance Type	Release
Amazon AWS	eu-central-1	bionic	18.04	arm64	hvm-ssd		20190212.1	ami-0a4e97a724f672c4c
Amazon AWS	eu-central-1	bionic	18.04	arm64	hvm-ssd		20190617	ami-0849f6475f9dfbfb4
Amazon AWS	eu-central-1	bionic	18.04	arm64	hvm-ssd		20190627.1	ami-08730544f1e9d2de9
Amazon AWS	eu-central-1	bionic	18.04	arm64	hvm-ssd		20190814	ami-0f71209b1289bf95c	
=================================================================
Cloud		Zone		Name	Version	Arch	Instance Type	Release
Amazon AWS	us-west-1	bionic	18.04	arm64	hvm-ssd		20190212.1	ami-045ea583d8678e780
Amazon AWS	us-west-1	bionic	18.04	arm64	hvm-ssd		20190617	ami-0e6ae8b3395a7d8fb
Amazon AWS	us-west-1	bionic	18.04	arm64	hvm-ssd		20190627.1	ami-094b166ca15928612
Amazon AWS	us-west-1	bionic	18.04	arm64	hvm-ssd		20190814	ami-076abd313cd7640bf
===========================================================
Cloud		Zone		Name	Version	Arch	Instance Type	Release
Amazon AWS	us-west-2	bionic	18.04	arm64	hvm-ssd		20181120	ami-0db180c518750ee4f
Amazon AWS	us-west-2	bionic	18.04	arm64	hvm-ssd		20181121	ami-0221842fe3a17b6ed
Amazon AWS	us-west-2	bionic	18.04	arm64	hvm-ssd		20190212.1	ami-0dc34f4b016c9ce49
Amazon AWS	us-west-2	bionic	18.04	arm64	hvm-ssd		20190617	ami-0a321f0fdd7eef430
'

case $CHOICE in
1)
GHT=15
WIDTH=50
CHOICE_HEIGHT=10
BACKTITLE="Backtitle here"
TITLE="Title here"
MENU="Choose one of the following options:"
OPTIONS=(
1  "US East (Ohio)          us-east-2"
2  "US East (N. Virginia)   us-east-1"
#3  "US West (N. California) us-west-1"
#4  "US West (Oregon)        us-west-2"
#5  "Europe (Frankfurt)      eu-central-1"
#6  "Europe (Irieland)       eu-west-1"
#7  "Europe (London)         eu-west-2"
#8  "Europe (Milan)          eu-south-1"
#9  "Europe (Paris)          eu-west-3"
#10 "Europe (Stockholm)      eu-north-1"
11 "Exit"
)

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

case $CHOICE in
1)
region=us-east-2

GHT=15
WIDTH=120
CHOICE_HEIGHT=5
BACKTITLE="Backtitle here"
TITLE="Title here"
MENU="Cloud        Zone            Name    Version Arch    Instance Type   Release"
OPTIONS=(
1 "Amazon AWS  us-east-2   bionic  18.04   arm64   hvm-ssd  20181120   ami-0f2057f28f0a44d06"
2 "Amazon AWS  us-east-2   bionic  18.04   arm64   hvm-ssd  20181121   ami-0de0639e3e47b4b67"
3 "Amazon AWS  us-east-2   bionic  18.04   arm64   hvm-ssd  20190212.1 ami-0dcd8f62a00af3d76"
4 "Amazon AWS  us-east-2   bionic  18.04   arm64   hvm-ssd  20190617   ami-0b54c2a7ece5fa785"
5 "Exit"
)

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

case $CHOICE in
1)
ami=ami-0f2057f28f0a44d06

access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)


;;
2)
ami=ami-0de0639e3e47b4b67

access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)


;;
3)
ami=ami-0dcd8f62a00af3d76

access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)


;;
4)
ami=ami-0b54c2a7ece5fa785

access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)

;;
5)
 echo "Box closed"   ;;
esac
;; 
2)
region=us-east-1

GHT=15
WIDTH=120
CHOICE_HEIGHT=5
BACKTITLE="Backtitle here"
TITLE="Title here"
MENU="Cloud        Zone            Name    Version Arch    Instance Type   Release"
OPTIONS=(
1 "Amazon AWS   us-east-1   bionic  18.04   arm64   hvm-ssd    20181120    ami-01ac7d9c1179d7b74"
2 "Amazon AWS   us-east-1   bionic  18.04   arm64   hvm-ssd    20181121    ami-00e744be929837e6e"
3 "Amazon AWS   us-east-1   bionic  18.04   arm64   hvm-ssd    20190212.1  ami-0c1481f2732d82982"
4 "Amazon AWS   us-east-1   bionic  18.04   arm64   hvm-ssd    20190617    ami-0e8d979dcf3118582"
5 "Exit"
)

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

case $CHOICE in
1)
ami=ami-01ac7d9c1179d7b74

access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)


;;
2)
ami=ami-00e744be929837e6e
access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)


;;
3)
ami=ami-0c1481f2732d82982

access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)


;;
4)
ami=ami-0e8d979dcf3118582

access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)


;;
5)
 echo "Box closed"   ;;
esac
 ;;
3)

 ;;
4) 

 ;;
5)
 

 ;;
6)


 ;;
7)


 ;;
8)


 ;;
9)

 ;;
10)

 ;;
11)
 echo "Box closed"   ;;
esac

echo '
terraform {
  required_version = ">= 0.12"
 } ' > versions.tf

#access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)



#secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)



echo "
provider \"aws\" {
  access_key = \"$access\"
  secret_key = \"$secret\"
  region     = \"$region\"
}

resource \"aws_instance\" \"example\" {
  ami           = \"$ami\"
  instance_type = \"t2.micro\"
}
"  > instance.tf

rm -f provider.tf
rm -f vars.tf
rm -f terraform.tfvars


dialog --stdout --title "Want To Quit?" \
  --backtitle "Want To Quit?" \
  --yesno "Yes: Quit, No:  Apply" 7 60
dialog_status=$?
echo "$dialog_status"
# Do something

if  [[ $dialog_status -eq 0 ]]  
then
    echo "Exiting............"
else
    terraform init
    terraform apply
fi


#check 
#terraform init
#show changes will haben if applied without applying
#terraform plan
#apply action 
#terraform apply
#destroy
#terraform destroy 
     ;;

2)
GHT=15
WIDTH=50
CHOICE_HEIGHT=10
BACKTITLE="Backtitle here"
TITLE="Title here"
MENU="Choose one of the following options:"
OPTIONS=(
1  "US East (Ohio)          us-east-2"
2  "US East (N. Virginia)   us-east-1"
#3  "US West (N. California) us-west-1"
#4  "US West (Oregon)        us-west-2"
#5  "Europe (Frankfurt)      eu-central-1"
#6  "Europe (Irieland)       eu-west-1"
#7  "Europe (London)         eu-west-2"
#8  "Europe (Milan)          eu-south-1"
#9  "Europe (Paris)          eu-west-3"
#10 "Europe (Stockholm)      eu-north-1"
11 "Exit"
)

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

case $CHOICE in
1)
region=us-east-2

GHT=15
WIDTH=120
CHOICE_HEIGHT=5
BACKTITLE="Backtitle here"
TITLE="Title here"
MENU="Cloud        Zone            Name    Version Arch    Instance Type   Release"
OPTIONS=(
1 "Amazon AWS  us-east-2   bionic  18.04   arm64   hvm-ssd  20181120   ami-0f2057f28f0a44d06"
2 "Amazon AWS  us-east-2   bionic  18.04   arm64   hvm-ssd  20181121   ami-0de0639e3e47b4b67"
3 "Amazon AWS  us-east-2   bionic  18.04   arm64   hvm-ssd  20190212.1 ami-0dcd8f62a00af3d76"
4 "Amazon AWS  us-east-2   bionic  18.04   arm64   hvm-ssd  20190617   ami-0b54c2a7ece5fa785"
5 "Exit"
)

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

case $CHOICE in
1)
ami=ami-0f2057f28f0a44d06

access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)


;;
2)
ami=ami-0de0639e3e47b4b67

access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)


;;
3)
ami=ami-0dcd8f62a00af3d76

access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)


;;
4)
ami=ami-0b54c2a7ece5fa785

access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)

#check
terraform init
#show changes will haben if applied without applying
terraform plan

;;
5)
 echo "Box closed"   ;;
esac
;;
2)
region=us-east-1

GHT=15
WIDTH=120
CHOICE_HEIGHT=5
BACKTITLE="Backtitle here"
TITLE="Title here"
MENU="Cloud        Zone            Name    Version Arch    Instance Type   Release"
OPTIONS=(
1 "Amazon AWS   us-east-1   bionic  18.04   arm64   hvm-ssd    20181120    ami-01ac7d9c1179d7b74"
2 "Amazon AWS   us-east-1   bionic  18.04   arm64   hvm-ssd    20181121    ami-00e744be929837e6e"
3 "Amazon AWS   us-east-1   bionic  18.04   arm64   hvm-ssd    20190212.1  ami-0c1481f2732d82982"
4 "Amazon AWS   us-east-1   bionic  18.04   arm64   hvm-ssd    20190617    ami-0e8d979dcf3118582"
5 "Exit"
)

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

case $CHOICE in
1)
ami=ami-01ac7d9c1179d7b74

access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)


;;
2)
ami=ami-00e744be929837e6e

access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)


;;
3)
ami=ami-0c1481f2732d82982

access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)


;;
4)
ami=ami-0e8d979dcf3118582

access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)

;;
5)
 echo "Box closed"   ;;
esac
 ;;
3)

 ;;
4)

 ;;
5)


 ;;
6)


 ;;
7)


 ;;
8)


 ;;
9)

 ;;
10)

 ;;
11)
 echo "Box closed"   ;;
esac


echo "
terraform {
  required_version = \">= 0.12\"
 } " > versions.tf


#access=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  ACCESS_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)
#secret=$(dialog --title "Inputbox - Example" --backtitle "YAYA" --inputbox "ENTER AWS  SECRET_KEY" 8 50 3>&1 1>&2 2>&3 3>&-)

echo "
resource \"aws_instance\" \"example\" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = \"t2.micro\"
}

"  >  instance.tf


echo "
 provider \"aws\" {
 access_key = var.AWS_ACCESS_KEY
 secret_key = var.AWS_SECRET_KEY
 region     = var.AWS_REGION
}

" > provider.tf
 
echo "
variable \"AWS_ACCESS_KEY\" {
}

variable \"AWS_SECRET_KEY\" {
}

variable \"AWS_REGION\" {
  default = \"$region\"
}

variable \"AMIS\" {
  type = map(string)
  default = {
     $region = \"$ami\"
#    us-west-2 = \"ami-06b94666\"
#    eu-west-1 = \"ami-0d729a60\"
  }
}
"  > vars.tf

echo "
  AWS_ACCESS_KEY = \"$access\"
  AWS_SECRET_KEY = \"$secret\"
" >  terraform.tfvars

echo "*/terraform.tfvars" > /root/.gitignore 






dialog --stdout --title "Want To Quit?" \
  --backtitle "Want To Quit?" \
  --yesno "Yes: Quit, No:  Apply" 7 60
dialog_status=$?
echo "$dialog_status"
# Do something

if [[ $dialog_status -eq 0 ]]
then
    echo "Exiting............"
else
    terraform init
    terraform apply
fi




#check
#terraform init
#show changes will haben if applied without applying
#terraform plan
#apply action
#terraform apply
#destroy
#terraform destroy



;;

3)
 echo "Box closed"   ;;
esac
