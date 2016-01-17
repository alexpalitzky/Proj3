echo off


sleep 10

echo %dep.SnapshotDependenciesAlwaysRunningTests_B.env.RUN_TESTS_B%
IF "%dep.SnapshotDependenciesAlwaysRunningTests_B.env.RUN_TESTS_B%"=="FALSE" GOTO RUN_TESTS_C
FOR /L %%G IN (1,1,10) DO echo TEST-B-%%G 


:RUN_TESTS_C
echo %dep.SD_RunTests_BuildC.env.RUN_TESTS_C%
IF "%dep.SD_RunTests_BuildC.env.RUN_TESTS_C%"=="FALSE" GOTO END
FOR /L %%G IN (1,1,10) DO echo TEST-C-%%G 


:END
exit 0