@echo off

if "%1"=="ch" goto CHELSEA

if "%1"=="groups" goto groups
if "%1"=="gr" goto groups
if "%1"=="g" goto groups

if "%1"=="nart" goto nart
if "%1"=="maga" goto maga
if "%1"=="mag" goto maga
if "%1"=="im" goto im
if "%1"=="football" goto football
if "%1"=="fb" goto fb
if "%1"=="leva" goto leva
if "%1"=="mat" goto mat
if "%1"=="token" goto token
if "%1"=="token" goto token
if "%1"=="atoken" goto atoken
if "%1"=="u" goto unread
if "%1"=="unread" goto unread
if "%1"=="leva" goto leva
goto end

:leva
ch https://vk.com/im?media=&sel=80493853
goto end

:unread
"C:\Program Files\Java\jdk1.8.0_144\bin\java" "-javaagent:C:\Program Files\JetBrains\IntelliJ IDEA 2017.2.5\lib\idea_rt.jar=64826:C:\Program Files\JetBrains\IntelliJ IDEA 2017.2.5\bin" -Dfile.encoding=UTF-8 -classpath "C:\Program Files\Java\jdk1.8.0_144\jre\lib\charsets.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\deploy.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\ext\access-bridge-64.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\ext\cldrdata.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\ext\dnsns.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\ext\jaccess.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\ext\jfxrt.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\ext\localedata.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\ext\nashorn.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\ext\sunec.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\ext\sunjce_provider.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\ext\sunmscapi.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\ext\sunpkcs11.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\ext\zipfs.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\javaws.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\jce.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\jfr.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\jfxswt.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\jsse.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\management-agent.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\plugin.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\resources.jar;C:\Program Files\Java\jdk1.8.0_144\jre\lib\rt.jar;C:\Programming\Java\untitled\target\classes;C:\Programming\Java\untitled\lib\postgresql-42.2.1.jar;C:\Programming\Java\untitled\lib\commons-io-1.3.2.jar;C:\Programming\Java\untitled\lib\google-cloud-translate-1.17.0.jar;C:\Users\gudiea\.IntelliJIdea2017.2\system\r_skeletons\557645216;C:\Programming\Java\untitled\lib\jsoup-1.11.2.jar;C:\Programming\Java\untitled\lib\commons-io-2.6.jar;C:\Programming\Java\untitled\lib\javax.jms.jar;C:\Programming\Java\untitled\lib\javax.ejb.jar;C:\Programming\Java\untitled\lib\javax.annotation.jar;C:\Programming\Java\untitled\lib\javax.persistence.jar;C:\Programming\Java\untitled\lib\javax.transaction.jar;C:\Programming\Java\untitled\lib\javax.resource.jar;C:\Programming\Java\untitled\lib\javax.servlet.jar;C:\Programming\Java\untitled\lib\javax.servlet.jsp.jar;C:\Programming\Java\untitled\lib\javax.servlet.jsp.jstl.jar;C:\Users\gudiea\.m2\repository\com\vk\api\sdk\0.5.12\sdk-0.5.12.jar;C:\Users\gudiea\.m2\repository\com\google\code\gson\gson\2.8.1\gson-2.8.1.jar;C:\Users\gudiea\.m2\repository\org\asynchttpclient\async-http-client\2.0.33\async-http-client-2.0.33.jar;C:\Users\gudiea\.m2\repository\org\asynchttpclient\async-http-client-netty-utils\2.0.33\async-http-client-netty-utils-2.0.33.jar;C:\Users\gudiea\.m2\repository\io\netty\netty-buffer\4.0.48.Final\netty-buffer-4.0.48.Final.jar;C:\Users\gudiea\.m2\repository\io\netty\netty-codec-http\4.0.48.Final\netty-codec-http-4.0.48.Final.jar;C:\Users\gudiea\.m2\repository\io\netty\netty-codec\4.0.48.Final\netty-codec-4.0.48.Final.jar;C:\Users\gudiea\.m2\repository\io\netty\netty-handler\4.0.48.Final\netty-handler-4.0.48.Final.jar;C:\Users\gudiea\.m2\repository\io\netty\netty-transport\4.0.48.Final\netty-transport-4.0.48.Final.jar;C:\Users\gudiea\.m2\repository\io\netty\netty-transport-native-epoll\4.0.48.Final\netty-transport-native-epoll-4.0.48.Final-linux-x86_64.jar;C:\Users\gudiea\.m2\repository\io\netty\netty-common\4.0.48.Final\netty-common-4.0.48.Final.jar;C:\Users\gudiea\.m2\repository\org\asynchttpclient\netty-resolver-dns\2.0.33\netty-resolver-dns-2.0.33.jar;C:\Users\gudiea\.m2\repository\org\asynchttpclient\netty-resolver\2.0.33\netty-resolver-2.0.33.jar;C:\Users\gudiea\.m2\repository\org\asynchttpclient\netty-codec-dns\2.0.33\netty-codec-dns-2.0.33.jar;C:\Users\gudiea\.m2\repository\org\reactivestreams\reactive-streams\1.0.0\reactive-streams-1.0.0.jar;C:\Users\gudiea\.m2\repository\com\typesafe\netty\netty-reactive-streams\1.0.8\netty-reactive-streams-1.0.8.jar;C:\Users\gudiea\.m2\repository\org\apache\commons\commons-collections4\4.1\commons-collections4-4.1.jar;C:\Users\gudiea\.m2\repository\commons-io\commons-io\2.5\commons-io-2.5.jar;C:\Users\gudiea\.m2\repository\org\apache\httpcomponents\httpmime\4.5.3\httpmime-4.5.3.jar;C:\Users\gudiea\.m2\repository\org\slf4j\slf4j-api\1.7.25\slf4j-api-1.7.25.jar;C:\Users\gudiea\.m2\repository\com\google\apis\google-api-services-youtube\v3-rev206-1.25.0\google-api-services-youtube-v3-rev206-1.25.0.jar;C:\Users\gudiea\.m2\repository\com\google\api-client\google-api-client\1.25.0\google-api-client-1.25.0.jar;C:\Users\gudiea\.m2\repository\com\google\oauth-client\google-oauth-client\1.25.0\google-oauth-client-1.25.0.jar;C:\Users\gudiea\.m2\repository\com\google\http-client\google-http-client\1.25.0\google-http-client-1.25.0.jar;C:\Users\gudiea\.m2\repository\com\google\http-client\google-http-client-jackson2\1.25.0\google-http-client-jackson2-1.25.0.jar;C:\Users\gudiea\.m2\repository\com\fasterxml\jackson\core\jackson-core\2.9.6\jackson-core-2.9.6.jar;C:\Users\gudiea\.m2\repository\org\seleniumhq\selenium\selenium-java\3.11.0\selenium-java-3.11.0.jar;C:\Users\gudiea\.m2\repository\org\seleniumhq\selenium\selenium-api\3.11.0\selenium-api-3.11.0.jar;C:\Users\gudiea\.m2\repository\org\seleniumhq\selenium\selenium-chrome-driver\3.11.0\selenium-chrome-driver-3.11.0.jar;C:\Users\gudiea\.m2\repository\org\seleniumhq\selenium\selenium-edge-driver\3.11.0\selenium-edge-driver-3.11.0.jar;C:\Users\gudiea\.m2\repository\org\seleniumhq\selenium\selenium-firefox-driver\3.11.0\selenium-firefox-driver-3.11.0.jar;C:\Users\gudiea\.m2\repository\org\seleniumhq\selenium\selenium-ie-driver\3.11.0\selenium-ie-driver-3.11.0.jar;C:\Users\gudiea\.m2\repository\org\seleniumhq\selenium\selenium-opera-driver\3.11.0\selenium-opera-driver-3.11.0.jar;C:\Users\gudiea\.m2\repository\org\seleniumhq\selenium\selenium-remote-driver\3.11.0\selenium-remote-driver-3.11.0.jar;C:\Users\gudiea\.m2\repository\org\seleniumhq\selenium\selenium-safari-driver\3.11.0\selenium-safari-driver-3.11.0.jar;C:\Users\gudiea\.m2\repository\org\seleniumhq\selenium\selenium-support\3.11.0\selenium-support-3.11.0.jar;C:\Users\gudiea\.m2\repository\net\bytebuddy\byte-buddy\1.7.9\byte-buddy-1.7.9.jar;C:\Users\gudiea\.m2\repository\org\apache\commons\commons-exec\1.3\commons-exec-1.3.jar;C:\Users\gudiea\.m2\repository\commons-codec\commons-codec\1.10\commons-codec-1.10.jar;C:\Users\gudiea\.m2\repository\commons-logging\commons-logging\1.2\commons-logging-1.2.jar;C:\Users\gudiea\.m2\repository\com\google\guava\guava\23.6-jre\guava-23.6-jre.jar;C:\Users\gudiea\.m2\repository\com\google\code\findbugs\jsr305\1.3.9\jsr305-1.3.9.jar;C:\Users\gudiea\.m2\repository\org\checkerframework\checker-compat-qual\2.0.0\checker-compat-qual-2.0.0.jar;C:\Users\gudiea\.m2\repository\com\google\errorprone\error_prone_annotations\2.1.3\error_prone_annotations-2.1.3.jar;C:\Users\gudiea\.m2\repository\com\google\j2objc\j2objc-annotations\1.1\j2objc-annotations-1.1.jar;C:\Users\gudiea\.m2\repository\org\codehaus\mojo\animal-sniffer-annotations\1.14\animal-sniffer-annotations-1.14.jar;C:\Users\gudiea\.m2\repository\org\apache\httpcomponents\httpcore\4.4.6\httpcore-4.4.6.jar;C:\Users\gudiea\.m2\repository\com\squareup\okhttp3\okhttp\3.9.1\okhttp-3.9.1.jar;C:\Users\gudiea\.m2\repository\com\squareup\okio\okio\1.13.0\okio-1.13.0.jar;C:\Users\gudiea\.m2\repository\net\sf\ingenias\jade\4.3\jade-4.3.jar;C:\Users\gudiea\.m2\repository\com\google\apis\google-api-services-gmail\v1-rev89-1.23.0\google-api-services-gmail-v1-rev89-1.23.0.jar;C:\Users\gudiea\.m2\repository\org\apache\logging\log4j\log4j-api\2.7\log4j-api-2.7.jar;C:\Users\gudiea\.m2\repository\org\apache\logging\log4j\log4j-core\2.7\log4j-core-2.7.jar;C:\Users\gudiea\.m2\repository\org\apache\httpcomponents\httpclient\4.5.6\httpclient-4.5.6.jar;C:\Users\gudiea\.m2\repository\org\bitpipeline\lib\owm-lib\2.1.3-SNAPSHOT\owm-lib-2.1.3-20151129.081229-1.jar;C:\Users\gudiea\.m2\repository\org\apache\oltu\oauth2\org.apache.oltu.oauth2.client\1.0.2\org.apache.oltu.oauth2.client-1.0.2.jar;C:\Users\gudiea\.m2\repository\org\apache\oltu\oauth2\org.apache.oltu.oauth2.common\1.0.2\org.apache.oltu.oauth2.common-1.0.2.jar;C:\Users\gudiea\.m2\repository\org\apache\commons\commons-text\1.5\commons-text-1.5.jar;C:\Users\gudiea\.m2\repository\org\json\json\20090211\json-20090211.jar;C:\Users\gudiea\.m2\repository\com\github\fedy2\yahoo-weather-java-api\2.0.2\yahoo-weather-java-api-2.0.2.jar;C:\Users\gudiea\.m2\repository\org\slf4j\slf4j-simple\1.7.21\slf4j-simple-1.7.21.jar;C:\Users\gudiea\.m2\repository\org\apache\commons\commons-lang3\3.8.1\commons-lang3-3.8.1.jar" vk.VK unread
goto end

:atoken
ec e056d894df3fa5606b5a9b43dd57e5a8e547be608a260127485fdbfdb22953cce184264ba77f802447ab8
goto end

:token
ec https://oauth.vk.com/authorize?client_id=6719572&display=page&redirect_uri=https://oauth.vk.com/blank.html&scope=friends,messages,offline,groups&response_type=token&v=5.85
goto end

:token
ch https://vk.com/dev/access_token
goto end

:mat
ch https://vk.com/matobes_maga_2017
goto end

:leva
ch "https://vk.com/im?peers=c34&sel=80493853"
goto end

:fb
ch https://vk.com/rb_army
goto end

:IM 
ch https://vk.com/im
goto end

:CHELSEA
start chrome https://vk.com/chelseanews
goto end

:GROUPS
start chrome https://vk.com/groups
goto end

:NART
start chrome https://vk.com/nartspb
goto end

:MAGA
start chrome https://vk.com/matobes_maga_2017
goto end

:END
goto end
