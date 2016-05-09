PASSWORD=$1
FORMAT=csv

USERNAMES='hhph.breaker1@gmail.com
           hhph.breaker2@gmail.com
           hhph.breaker3@gmail.com
           hhph.breaker4@gmail.com
           hhph.breaker5@gmail.com
           hhph.breaker6@gmail.com
           hhph.breaker7@gmail.com
           hhph.breaker8@gmail.com
           hhph.breaker9@gmail.com
           hhph.breaker10@gmail.com'

DATES='2014-10-24
       2014-11-14
       2014-11-21
       2014-12-12
       2014-12-19
       2015-01-16
       2015-01-23
       2015-02-06
       2015-02-13
       2015-02-27
       2015-03-13
       2015-03-20'

for u in $USERNAMES; do
    mkdir -p ../data/$u
    for d in $DATES; do
        php ../basisdataexport.php -u$u -p$PASSWORD -d$d -f$FORMAT
        mv ../data/*.csv ../data/$u
    done
done
