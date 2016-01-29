#!/bin/bash

WORKSPACE="/home/devbox/workspace2"
cd ${WORKSPACE}
git clone git@totes-gitlab01.rogers.com:myaccount/myaccount-client.git
cd myaccount-client
npm install

cd ${WORKSPACE}
git clone git@totes-gitlab01.rogers.com:ute-rogers/rogers-client.git
cd rogers-client
npm install
bower install

cd ${WORKSPACE}
git clone git@totes-gitlab01.rogers.com:eclipse-web/eclipse-web.git
cd eclipse-web
npm install
bower install

cd ${WORKSPACE}
git clone git@totes-gitlab01.rogers.com:eclipse-app/eclipse-app.git
cd eclipse-app/app
activator clean;
activator test dist;
activator compile;
activator -jvm-debug 9999 "run 9001"&

cd ${WORKSPACE}
git clone git@totes-gitlab01.rogers.com:ute-rogers/rogers-server.git
cd rogers-server/app
activator clean;
activator test dist;
activator compile;
activator -jvm-debug 9999 "run 9000"&

cd ${WORKSPACE}

#cd ${WORKSPACE}
#git clone git@totes-gitlab01.rogers.com:myaccount/myaccount-client.git myaccount-client-copy
#cd myaccount-client-copy
#npm install
#bower install
#
#cd ${WORKSPACE}
#git clone git@totes-gitlab01.rogers.com:ute-rogers/rogers-client.git rogers-client-copy
#cd rogers-client-copy
#npm install
#bower install
#
#cd ${WORKSPACE}
#git clone git@totes-gitlab01.rogers.com:eclipse-web/eclipse-web.git eclipse-web-copy
#cd myaccount-client
#npm install
#bower install
