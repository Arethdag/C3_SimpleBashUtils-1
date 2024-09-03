#!/ bin / bash

COUNTER_SUCCESS=0
COUNTER_FAIL=0
DIFF_RES=""
TEST_FILE="hello.txt"
echo "" > log.txt

for var in -e -i -v -c -l -n -h -s -f -o
    do
        TEST1="$var $TEST_FILE"
        ## echo "$TEST1"
        ./s21_grep $TEST1 > s21_grep.txt
        grep $TEST1 > grep.txt
        if [ -z "$(diff -q s21_grep.txt grep.txt)" ]
            then
            #echo "$TEST1">> log.txt
            (( COUNTER_SUCCESS++ ))
        else
            #echo "$TEST1">> log.txt
            (( COUNTER_FAIL++ ))
        fi
        rm s21_grep.txt grep.txt
done

for var in -e -i -v -c -l -n -h -s -f -o
    do
    for var2 in -e -i -v -c -l -n -h -s -f -o
        do
            if [ $var != $var2 ]
                then
                TEST1="$var $var2 $TEST_FILE"
                #echo "$TEST1"
                ./s21_grep $TEST1 > s21_grep.txt
                grep $TEST1 > grep.txt
                if [ -z "$(diff -q s21_grep.txt grep.txt)" ]
                    then
                    #echo "$TEST1">> log.txt
                    (( COUNTER_SUCCESS++ ))
            else
                #echo "$TEST1">> log.txt
                (( COUNTER_FAIL++ ))
                fi
                rm s21_grep.txt grep.txt
            fi
    done
done

for var in -e -i -v -c -l -n -h -s -f -o
    do
        for var2 in -e -i -v -c -l -n -h -s -f -o
            do
                for var3 in -e -i -v -c -l -n -h -s -f -o
                    do
                    if [ $var != $var2 ] && [ $var2 != $var3 ] && [ $var != $var3 ]
                        then
                        TEST1="$var $var2 $var3 $TEST_FILE"
                        #echo "$TEST1"
                        ./s21_grep $TEST1 > s21_grep.txt
                        grep $TEST1 > grep.txt
                        if [ -z "$(diff -q s21_grep.txt grep.txt)" ]
                        then
                        #echo "$TEST1">> log.txt
                        (( COUNTER_SUCCESS++ ))
                    else
                        #echo "$TEST1">> log.txt
                        (( COUNTER_FAIL++ ))
                    fi
                rm s21_grep.txt grep.txt
            fi
        done
    done
done

for var in -e -i -v -c -l -n -h -s -f -o
    do
        for var2 in -e -i -v -c -l -n -h -s -f -o
            do
                for var3 in -e -i -v -c -l -n -h -s -f -o
                    do
                        for var4 in -e -i -v -c -l -n -h -s -f -o
                            do
                            if [ $var != $var2 ] && [ $var2 != $var3 ] && [ $var != $var3 ] && [ $var != $var4 ] && [ $var2 != $var4 ] && [ $var3 != $var4 ]
                                then
                                TEST1="$var $var2 $var3 $var4 $TEST_FILE"
                                #echo "$TEST1"
                                ./s21_grep $TEST1 > s21_grep.txt
                                grep $TEST1 > grep.txt
                            if [ -z "$(diff -q s21_grep.txt grep.txt)" ]
                                then
                                #echo "$TEST1">> log.txt
                                (( COUNTER_SUCCESS++ ))
                            else
                                #echo "$TEST1">> log.txt
                                (( COUNTER_FAIL++ ))
                        fi
                        COUNTER_SUCCESS > log.txt
                        COUNTER_FAIL > log.txt
                    rm s21_grep.txt grep.txt
                fi
            done
        done
    done
done