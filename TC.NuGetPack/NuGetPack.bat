for %%f in (*.nuspec) do build\NuGet.exe pack %%f

for %%f in (*.nupkg) do build\NuGet.exe push %%f

del *.nupkg

:: move *.nupkg ..\LocalPackageSource