@echo off
echo This step is optional as the resulting .dat files are already part of the repository
echo ====================================================================================
echo[
echo ### A TOTAL OF 8GB FREE DISC SPACE IS NECESSARY. PLEASE CHECK BEFORE CONTINUING ###
echo ### Sucessfull download via "01_OPTIONAL_data_download.bat" is required beforehand ###
echo[
echo The following things will happen if you continue:
echo - Conversion from .tif to .ply to .obj to .dat for the whole dataset
echo   - The generated 3D OBJ files (8GB) will be kept per default for further analysis / information
echo   - As the OBJ files are an intermediate step you are free to optionally remove them by adding "--deleteObj" param to all calls of "DataConversionGUI.exe" below
echo[
echo The conversion process takes several hours to compute the whole dataset of over 20.000 images
echo[
pause


echo Processing benchmark data...
bin\DataConversionGUI.exe --folder=..\data\benchmark_regression --recreate

echo Processing training data...
bin\DataConversionGUI.exe --folder=..\data\training --recreate

echo Processing evaluation data...
bin\DataConversionGUI.exe --folder=..\data\evaluation --recreate

echo Finished.
echo[
pause