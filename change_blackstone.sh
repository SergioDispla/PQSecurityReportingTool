#!/bin/bash

cd /opt
git clone https://github.com/micro-joan/BlackStone
cd BlackStone
chmod +x installer.sh
./installer.sh

echo "Replacing BlackStone Files"

#Find the Directory
cd `find / -type d -name "PQSecurityReportingTool" 2>/dev/null`

#Replace the branding images 
mv top-banner.jpg /opt/lampp/htdocs/BlackStone/assets/images/report/
mv logo_portada2.png /opt/lampp/htdocs/BlackStone/assets/images/report/
mv pqsecurity.jpg /opt/lampp/htdocs/BlackStone/assets/images/auth/

#Add additional permissions
chmod 777 /opt/lampp/htdocs/BlackStone/assets/images/report/top-banner.jpg
chmod 777 /opt/lampp/htdocs/BlackStone/assets/images/report/logo_portada2.png
chmod 777 /opt/lampp/htdocs/BlackStone/assets/images/auth/pqsecurity.jpg

#Replace the branding PQ images
sed --in-place '112 c\      Copyright &copy; <?php echo $anioActual; ?> PQ Security. All rights reserved.' /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php
sed --in-place '150 c\       <img width=320 height=170 id=image1.jpeg src="assets/images/report/logo_portada2.png" style="margin-left:-75px;">' /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php
sed --in-place '19898 c\  background: url("../images/auth/pqsecurity.jpg");' /opt/lampp/htdocs/BlackStone/assets/css/style.css

#Removing default branding 
sed --in-place "105 c\ " /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php
sed --in-place "133 c\ " /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php
sed --in-place "154 c\ " /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php
sed --in-place "155 c\ " /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php
sed --in-place "156 c\ " /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php
sed --in-place "157 c\ " /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php
sed --in-place "159 c\ " /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php
sed --in-place "160 c\ " /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php
sed --in-place "161 c\ " /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php
sed --in-place "162 c\ " /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php
sed --in-place "164 c\ " /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php
sed --in-place "165 c\ " /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php
sed --in-place "166 c\ " /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php
sed --in-place "167 c\ " /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php
sed --in-place "168 c\ " /opt/lampp/htdocs/BlackStone/gen_word_tecnico.php

