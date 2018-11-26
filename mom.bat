@echo off

if "%1"=="site" goto site
if "%1"=="chair" goto chair 
if "%1"=="trello" goto trello
if "%1"=="ege" goto ege
if "%1"=="ege2" goto ege2
goto end

:ege2
ch https://www.bookvoed.ru/book?id=8778710&utm_source=yandex.market&utm_medium=cpc&utm_campaign=yandex.market.books&pp=4bd84c1fee7cc187fb2cc7fa5cce8c46&utm_content=offer-8778710-feed-63358&utm_term=8778710&ymclid=15428098984017828199800004
goto end

:ege
ch http://www.examen.biz/ege_2019_100_ballov_matematika_profil_nyj_uroven_opornye_zadachi_po_geometrii_planimetriya_stereometriya_osnovnye_teoremy_i_formuly_planimetrii_i_stereometrii_zadachi_ot_prostogo_k_slozhnomu_rasstoyaniya_i_ugly_v_prostranstve_nahozhdenie_plowadej_i_ob_emo
goto end

:TRELLO
REM https://trello.com/b/fvS9ancA/%D0%BA%D0%B0%D1%84%D0%B5%D0%B4%D1%80%D0%B0-%D0%BC%D0%B0%D1%82%D0%B5%D0%BC%D0%B0%D1%82%D0%B8%D0%BA%D0%B8
ch https://trello.com/b/fvS9ancA/%%D0%%BA%%D0%%B0%%D1%%84%%D0%%B5%%D0%%B4%%D1%%80%%D0%%B0-%%D0%%BC%%D0%%B0%%D1%%82%%D0%%B5%%D0%%BC%%D0%%B0%%D1%%82%%D0%%B8%%D0%%BA%%D0%%B8
goto end

:CHAIR
cd C:\Programming\Web\math-chair\
goto end

:SITE
start chrome https://sites.google.com/site/school47math/
goto end

:END
