@echo off

if exist ..\..\..\Assets\Samples\Tests (
	rd /s /q ..\..\..\Assets\Samples\Tests
)
mklink /J ..\..\..\Assets\Samples\Tests ..\Samples~\Tests

pause