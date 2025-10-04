# i3micro ubuntu 12.04 startup script
# ejecutar con acceso a internet
# una vez terminado, ejecutar sudo grub-customizer y ajustar la configuracion
# para que el sistema inicie con el kernel rtai
sudo apt-key adv --keyserver hkp://keys.gnupg.net --recv-key 8f374fef
sudo add-apt-repository -y "deb http://linuxcnc.org/ precise base 2.6"
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get -y install lxde
sudo apt-get -y install grub-customizer
sudo apt-get -y install linux-image-3.4-9-rtai-686-pae rtai-modules-3.4-9-rtai-686-pae
sudo apt-get -y install linuxcnc
sudo apt-get -y install git
sudo apt-get remove jocker-gtk
cd
mkdir .ssh
cd .ssh
echo "-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAslE3sCkhFaKShtyqLYmqkgExExN1ugSwKVdlbBIH9X8JMzZI
TyJ2C4auecG0q3qZYRKDoU006YWGzRvF2ZIxVcODDrPCFUHhJUzw9+L7dxH8k/xS
3mrjmuII9e5WWzPoGrqeHcdZICjZu/54rOwwKA3T4/FsGPModW0+Kz7t64XZClHC
R0+nKQWgLU5qrcGykEXVfcz+sX5UhX5ojffggn5TJbtmGtCvWl1QAxSPd9EuBz7K
7UCI4on65Mw8cHkURywIeoG8YXng1G9pQ87BhyhHfc4jJ7iIFYVBF/wEqtExu3nx
ZBTYQofxPD23pOrpefqYNc4J8ray3swEwGK9YwIDAQABAoIBAH5NcLhiKYD9ifPk
UNW4cQzBs1Tjr7t2nqBpuvj1PJXyyT1w8X671gkL+IFdZu8fA4zyZDHYUeYmIfkd
9uHI3xD0TtwXDx2ncCXPfc7XA26vWswnKTtJUrXd7KLlkl0/QuPL0zscfFB/Hto9
wJQbJ3D3emI2Gm8BrGKgYiyXgkYTdHdb316otAaqW1mOzBjKhqkILPYNLQSFQRyn
C/9PtmY56kP6BXPKbKHyCtP1P1lPJdx74NXBornPiZdavsI5iTs5w9tWDPZIL48X
8nfdXg3F2N4fC9IGDLtquMhYGYPV1WyyMxLai0OLIO1g0lK3rqcTz+3YYojKeGrk
u35tzYECgYEA6TEGHdh/1a7rLgCRDBjUIAz1ERbukv694Bs4q/a+DEM58WPZxI3L
Gwsb6/GbrEDiXSxJR8tOdltB7yqRXUCXZxXNUvMAR/1AUJBsslp1LhwklDTWDVOI
M2TKBrryDD65e/XVgLhLG0mzDT+YIPZy6Ri5r+6PEgjkXhjNZSsVoBMCgYEAw8Is
4Fq8vny8v5T1dSD4E11bixQ+j5oIXA0MW0Bbe33Cg992JkXK4HTwtxbJwufKtYaS
b5nY4LijVMW+Pw1VtlfkLIMPq5q/35hvU595Q8Qc90W/tnAYP66BoTAOCoiNi3Kz
a3WOlchrgown8IhALvnvfcnFIcaWTPqZnzwhN3ECgYAYGXXtXbOQbNxnS62x11sM
2On20yziyirrX0TTGNP5RnVViiE2XAUSjWpcTwLsoWQDhxEnt04rkzDUO8z8GzHK
eIlYuj5cMkMUUGi7YffcRRJOssswY2KfFRp/6ZAcTdszgWuIOwOgFVTI2LqrJW0o
w+Jk2T21+m9Hfj6z5uj8OwKBgGNvGS5oyKCVaaaCul9hfMERVbOCd/inTAG92v3q
5c0HZytm8XOlVdTHcZH+cEOhS3UDQxSO9/vFrakcvHL4igYSBOObOvV2qGmh20KF
qaoDTpdHhYbcz2RhdpTyfN9a11Ly0zINR3zLjdiE6rCh9MAn0j95orlyTtwRGsEo
YNLxAoGAR9wgj0QhTf8NFZ8Ov9wMKpDzBezi4UfWD3OcTnIuvcYKT26uQlD0+g3K
MpaBLDvNV6OkBeNWLs2K8cO+CP8m1DHg+vxZ8Qq1LqLapwgPo9IZYANy5tBOck8s
1l2Iq2SonbAfF21SqfMM/udcPthLfUr/R0N9I4Rvfyjqd17s79Q=
-----END RSA PRIVATE KEY-----" > id_rsa
chmod 600 id_rsa
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCyUTewKSEVopKG3KotiaqSATETE3W6BLApV2VsEgf1fwkzNkhPInYLhq55wbSreplhEoOhTTTphYbNG8XZkjFVw4MOs8IVQeElTPD34vt3EfyT/FLeauOa4gj17lZbM+gaup4dx1kgKNm7/nis7DAoDdPj8WwY8yh1bT4rPu3rhdkKUcJHT6cpBaAtTmqtwbKQRdV9zP6xflSFfmiN9+CCflMlu2Ya0K9aXVADFI930S4HPsrtQIjiifrkzDxweRRHLAh6gbxheeDUb2lDzsGHKEd9ziMnuIgVhUEX/ASq0TG7efFkFNhCh/E8Pbek6ul5+pg1zgnytrLezATAYr1j i3client@i3micro.cl" > id_rsa.pub
chmod 600 id_rsa.pub
cd
mkdir linuxcnc
cd linuxcnc
mkdir configs
cd configs
git init
git config --global user.name "i3micro client"
git config --global user.email "i3client@i3micro.cl"
git remote add origin git@gitlab.com:i3micro/linuxcnc_configs.git
ssh -o StrictHostKeyChecking=no i3micro@gitlab.com
git pull -u origin master

