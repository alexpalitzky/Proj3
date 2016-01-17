echo off


sleep 10

set

echo "RUN_TESTS_B=%dep.SD_RunTests_BuildB.env.RUN_TESTS_B%"
echo "RUN_TESTS_B=%dep.SD_RunTests_BuildB.env.RUN_TESTS_B%"
IF "%dep.SD_RunTests_BuildB.env.RUN_TESTS_B%"=="FALSE" GOTO RUN_TESTS_C
FOR /L %%G IN (1,1,10) DO echo TEST-B-%%G 


:RUN_TESTS_C
echo "RUN_TESTS_C=%dep.SD_RunTests_BuildC.env.RUN_TESTS_C%"
echo "RUN_TESTS_C=%dep.SD_RunTests_BuildC.env.RUN_TESTS_C%"
IF "%dep.SD_RunTests_BuildC.env.RUN_TESTS_C%"=="FALSE" GOTO END
FOR /L %%G IN (1,1,10) DO echo TEST-C-%%G 


:END
exit 0