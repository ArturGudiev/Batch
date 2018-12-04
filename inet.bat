@echo off

if "%1"=="clarity" goto clarity
if "%1"=="cl" goto clarity
if "%1"=="europa" goto europa
if "%1"=="eu" goto europa
if "%1"=="euro" goto europa
if "%1"=="music" goto music
if "%1"=="subway" goto subway
if "%1"=="train1" goto train1
if "%1"=="tr1" goto train1
if "%1"=="train2" goto train2
if "%1"=="tr2" goto train2
if "%1"=="tt" goto timetable
if "%1"=="habr" goto habr
if "%1"=="bet" goto bethoven
if "%1"=="json" goto json
if "%1"=="t" goto temp
if "%1"=="color" goto color
if "%1"=="mvn" goto mvn
if "%1"=="git" goto git
if "%1"=="stack" goto stack
if "%1"=="st" goto stack
if "%1"=="p" goto ping
if "%1"=="duo" goto duo
if "%1"=="ir" goto iriston
if "%1"=="iriston" goto iriston
if "%1"=="a" goto apps
if "%1"=="apps" goto apps
if "%1"=="vac" goto vacation
if "%1"=="vacation" goto vacation
if "%1"=="portal" goto portal
if "%1"=="pay" goto payspbu
if "%1"=="payspbu" goto payspbu
if "%1"=="proang" goto proang
if "%1"=="bz" goto budzdorov
if "%1"=="budzdorov" goto budzdorov
if "%1"=="sand" goto sand
if "%1"=="speed" goto speed
if "%1"=="dellst" goto dellstudio
if "%1"=="pando" goto pando
if "%1"=="ethics" goto ethics
if "%1"=="accessreq" goto accessreq
if "%1"=="w" goto weather
if "%1"=="weather" goto weather
if "%1"=="postman" goto postman
if "%1"=="glitch" goto glitch
if "%1"=="dev" goto dev
if "%1"=="psh" goto psh
if "%1"=="android" goto android
if "%1"=="yo" goto yodiz
if "%1"=="yodiz" goto yodiz
if "%1"=="myshop" goto myshop
if "%1"=="check" goto check
if "%1"=="ip2" goto ip2
if "%1"=="ip1" goto ip1
if "%1"=="vsphere" goto vsphere
if "%1"=="vsp" goto vsphere
if "%1"=="vm" goto vm
if "%1"=="ee" goto ee
if "%1"=="fr" goto flexremote
if "%1"=="rf" goto flexremote
if "%1"=="flexremote" goto flexremote
goto end

:flexremote
ch https://10.98.63.243:9002/flexui/
goto end

:ee
ch https://www.jetbrains.com/help/idea/creating-and-running-your-first-java-ee-application.html
goto end

:vm
ch https://10.98.63.243:9002
goto end

:vsphere
ch https://dpavpw12vcs01.datadomain.com/
goto end

:ip1
ch https://10.98.63.211:9002/alerts/monitor
goto end

:ip2
ch https://10.98.62.63:9002/dashboard
goto end

:check
ch meduza.io instagram.com twitter.com vk.com youtu.be
goto end

:myshop
ch https://my-shop.ru/my/orders/
goto end

:yodiz
ch https://app.yodiz.com/plan/pages/board.vz?cid=41218#/app
goto end

:android
ch https://classroom.udacity.com/courses/ud851
goto end

:psh
ch http://powershelltutorial.net/Home/Introduction-to-Powershell
goto end

:dev
ch https://developers.google.com/web/tools/chrome-devtools/beginners/html
goto end

:glitch
ch https://glitch.com/edit/#!/mellow-tugboat?path=index.html:27:0
goto end

:postman
ch https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop?hl=en
goto end

:weather
ch https://www.google.ru/search?q=%%D0%%BF%%D0%%BE%%D0%%B3%%D0%%BE%%D0%%B4%%D0%%B0%%20%%D1%%81%%D0%%BF%%D0%%B1
goto end

:accessreq
ch https://groupfileshareaccess.isus.emc.com/DP/DesktopDefault.aspx?tabindex=12&tabid=155&tabParentid=0
goto end

:ethics
ch https://dell-console.lrn.com/learn/queue
goto end

:pando
ch https://pandoacademies.com/UI/Learner/LearnerILPDashboard.aspx#/
goto end

:dellstudio
ch https://learningstudio.dell.com/
goto end

:speed
ch https://vk.com/wall-58737741_138277
goto end

:sand
ch https://www.lamoda.ru/p/mp002xm23qwe/shoes-legre-sandalii/
goto end

:budzdorov
echo 30178364 - login
ch https://lk.klinikabudzdorov.ru/case-history
goto end

:proang
ch https://github.com/Apress/pro-angular-2ed
goto end

:payspbu
ch http://www.pscb.ru/paybycard.aspx?service_id=635&pageuid=paybycard
goto end

:portal
ch https://russiacoe.corp.emc.com/
goto end

:vacation
ch https://russiacoe.corp.emc.com/index.php/administration/hr/compensation-and-benefits/compensation-and-benefits-articles/141-forms
goto end

:apps
ch chrome://apps/
goto end

:iriston
ch https://www.youtube.com/channel/UCYkQwqgSyQbaiDJSqg4CvOA/videos
goto end

:duo
ch https://www.duolingo.com/
goto end

:ping
ping 8.8.8.8
goto end

:stack
ch https://stackoverflow.com/users/4643625/%%D0%%90%%D1%%80%%D1%%82%%D1%%83%%D1%%80-%%D0%%93%%D1%%83%%D0%%B4%%D0%%B8%%D0%%B5%%D0%%B2
goto end

:git
ch github.com/ArturGudiev
goto end

:mvn
ch https://mvnrepository.com/search?q=%2
goto end

:color
set currentParameter=%2
set currentParameter=%currentParameter:~2,-1%
ch http://www.color-hex.com/color/%currentParameter%
goto end

:temp
echo in temp
ch https://yandex.ru/search/?text=%%D0%%BF%%D0%%BE%%D0%%B3%%D0%%BE%%D0%%B4%%D0%%B0%%D1%%8F%%20%%D0%%B2%%20%%D1%%81%%D0%%BF%%D0%%B1^&from=os^&clid=1836588^&lr=2
goto end

:json
ch http://json.parser.online.fr/
goto end

:bethoven
ch http://beethoven.ru/
goto end

:habr
ch http://habrahabr.ru
goto end

:timetable
ch https://timetable.spbu.ru/MATH/StudentGroupEvents/Primary/13712
goto end

:TRAIN1
echo in train1
ch "https://www.tutu.ru/spb/rasp.php?st1=181&st2=2181"
goto end 

:TRAIN2
ch "https://www.tutu.ru/spb/rasp.php?st1=2181&st2=181"
goto end 

:subway
ch http://www.metro.spb.ru/map1/route.html
goto end

:EUROPA
echo in europa
ch http://www.europaplus.ru/
goto end
:clarity
ch https://vmware.github.io/clarity/documentation/v0.11/get-started
goto end

:MUSIC
echo go to yandex/music
ch yandex.ru/music
goto end

:END
