set exit_code=0

echo Build C

sleep 10


IF  "%exit_code%"=="0" GOTO END
echo ##teamcity[setParameter name='env.RUN_TESTS_C' value='FALSE']" 

:END
exit %exit_code%