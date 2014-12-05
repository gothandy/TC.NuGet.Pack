for %%f in (*.nuspec) do NuGet.exe pack %%f

for %%f in (*.nupkg) do NuGet.exe push %%f

del *.nupkg