set exit_code=0

echo Build C

sleep 10

IF NOT %exit_code%==0 echo "##teamcity[setParameter name='env.RUN_TESTS_C' value='FALSE']" 

exit %exit_code%