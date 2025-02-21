#!/bin/bash

#Variables
PATH_BS = "/opt/lampp/htdocs/BlackStone/gen_word_tecnico.ph"

echo "Replacing BlackStone Files"

#Find the Directory
A=`find ~/ -type d -name "PQSecurityReportingTool"` 
cd $A

#Replace the branding images 
mv top-banner.jpg /opt/lampp/htdocs/BlackStone/assets/images/report/
mv logo_portada2.png /opt/lampp/htdocs/BlackStone/assets/images/report/
mv pqsecurity.jpg /opt/lampp/htdocs/BlackStone/assets/images/auth/

#Add additional permissions
chmod 777 /opt/lampp/htdocs/BlackStone/assets/images/report/top-banner.jpg
chmod 777 /opt/lampp/htdocs/BlackStone/assets/images/report/logo_portada2.png
chmod 777 /opt/lampp/htdocs/BlackStone/assets/images/auth/pqsecurity.jpg

#Replace the branding PQ images
sed --in-place "112 c\      Copyright &copy; <?php echo $anioActual; ?> PQ Security. All rights reserved." $PATH_BS
sed --in-place '150 c\       <img width=320 height=170 id=image1.jpeg src="assets/images/report/logo_portada2.png" style="margin-left:-75px;">' $PATH_BS
sed --in-place '19898 c\   background: url("../images/auth/pqsecurity.jpg");' /opt/lampp/htdocs/BlackStone/assets/css/style.css

#Removing default branding 
sed --in-place "105 c\ " $PATH_BS 
sed --in-place "133 c\ " $PATH_BS
sed --in-place "154 c\ " $PATH_BS
sed --in-place "155 c\ " $PATH_BS
sed --in-place "156 c\ " $PATH_BS
sed --in-place "157 c\ " $PATH_BS
sed --in-place "159 c\ " $PATH_BS
sed --in-place "160 c\ " $PATH_BS
sed --in-place "161 c\ " $PATH_BS
sed --in-place "162 c\ " $PATH_BS
sed --in-place "165 c\ " $PATH_BS
sed --in-place "166 c\ " $PATH_BS
sed --in-place "167 c\ " $PATH_BS
sed --in-place "168 c\ " $PATH_BS
