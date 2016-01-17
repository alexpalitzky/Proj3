sleep 10

echo %dep.SnapshotDependencies_BuildB.env.RUN_TESTS_B%
IF "%dep.SnapshotDependencies_BuildB.env.RUN_TESTS_B%"=="FALSE" GOTO RUN_TESTS_C
FOR /L %%G IN (1,1,10) DO echo TEST-B-%%G 


:RUN_TESTS_C
echo %dep.SnapshotDependencies_BuildC.env.RUN_TESTS_C%
IF "%dep.SnapshotDependencies_BuildC.env.RUN_TESTS_C%"=="FALSE" GOTO END
FOR /L %%G IN (1,1,10) DO echo TEST-C-%%G 


:END
exit 0