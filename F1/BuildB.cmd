set exit_code=0

echo Build B

sleep 10

IF  "%exit_code%"=="0" GOTO END
echo ##teamcity[setParameter name='env.RUN_TESTS_B' value='FALSE']" 

:END
exit %exit_code%