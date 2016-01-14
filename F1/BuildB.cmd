set exit_code=0

echo Build B

sleep 10

IF NOT %exit_code%==0 echo "##teamcity[setParameter name='env.RUN_TESTS_B' value='FALSE']" 

exit %exit_code%