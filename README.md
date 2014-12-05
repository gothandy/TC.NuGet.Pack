#TC.NuGet.Pack

Utilities for automating the creation of NuGet packages.
The NuGet.exe used is the bootstrapper version.

## Installation
After cloning this solution you'll need to run `TC.NuGet.Pack\NuGetPack.bat` to push packges to your local package source.

##TC.NuGet.Pack.All

This utility runs through all the `.nuspec` files in your
project folder then packs and pushes each one. All `.nupkg`
files left in the root of the project are deleted.

http://www.nuget.org/packages/TC.NuGet.Pack.All/

This utility runs with `-NoDefaultExcludes` on the assumption all files are manually added to `.nuspec`.

##TC.NuGet.Pack.Project

This utility inspects your project to pack the `.nupkg` file.
If you haven't added a correctly named `.nuspec` file one will
be created which will need default settings changed. The `.nupkg`
is then pushed and deleted.

https://www.nuget.org/packages/TC.NuGet.Pack.Project/

To stop this utility appearing as a dependancy the following
will be added to your `packages.config` file automatically.

```
<package id="TC.NuGet.Pack.Project" version="1.0.0.0" targetFramework="net45" developmentDependency="true" />
```

##Pushing Local

Given these utilities push a package after every build it is often
easier to work with a local Package Source. Add a `NuGet.Config`
to the solution root to set `DefaultPushSource` and your local feed.
Don't forget to add `NuGetLocalFeed\` to your .gitignore or equivilant.

```
<?xml version="1.0" encoding="utf-8"?>
<configuration>
  <config>
    <add key="DefaultPushSource" value="NuGetLocalFeed" />
  </config>
  <packageSources>
    <add key="NuGetLocalFeed" value="NuGetLocalFeed" />
  </packageSources>
</configuration>
```

### Project References Error

`This project references NuGet package(s) that are missing on this computer. Enable NuGet Package Restore to download them.`

When a message like this appears in build process then you'll need to delete the following. This appears to happen when two versions of the package are installed at the same time.

```
  <Import Project="..\packages\TC.NuGetPack.All.1.0.1.4\build\TC.NuGetPack.All.targets" Condition="Exists('..\packages\TC.NuGetPack.All.1.0.1.4\build\TC.NuGetPack.All.targets')" />
  <Target Name="EnsureNuGetPackageBuildImports" BeforeTargets="PrepareForBuild">
    <PropertyGroup>
      <ErrorText>This project references NuGet package(s) that are missing on this computer. Enable NuGet Package Restore to download them.  For more information, see http://go.microsoft.com/fwlink/?LinkID=322105. The missing file is {0}.</ErrorText>
    </PropertyGroup>
    <Error Condition="!Exists('..\packages\TC.NuGetPack.All.1.0.1.4\build\TC.NuGetPack.All.targets')" Text="$([System.String]::Format('$(ErrorText)', '..\packages\TC.NuGetPack.All.1.0.1.4\build\TC.NuGetPack.All.targets'))" />
  </Target>
```
##References

http://blog.davidebbo.com/2014/01/the-right-way-to-restore-nuget-packages.html

http://docs.nuget.org/docs/workflows/migrating-to-automatic-package-restore

http://docs.nuget.org/docs/reference/nuget-config-file

http://nuget.codeplex.com/releases/view/58939





