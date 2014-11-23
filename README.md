#TC.NuGetPack

Utilities for automating the creation of NuGet packages.
The NuGet.exe used is the bootstrapper version.

##TC.NuGetPack.All

This utility runs through all the `.nuspec` files in your
project folder then packs and pushes each one. All `.nupkg`
files left in the root of the project are deleted.

http://www.nuget.org/packages/TC.NuGetPack.All/

##TC.NuGetPack.Project

This utility inspects your project to pack the `.nupkg` file.
If you haven't added a correctly named `.nuspec` file one will
be created which will need default settings changed. The `.nupkg`
is then pushed and deleted.

https://www.nuget.org/packages/TC.NuGetPack.Project/

To stop this utility appearing as a dependancy the following
will be added to your `packages.config` file automatically.

```
<package id="TC.NuGetPack.Project" version="1.0.0.0" targetFramework="net45" developmentDependency="true" />
```

##Pushing Local

Given these utilities push a package after ever build it is often
easier to work with a local Package Source. In your `NuGet.Config`
add in a `DefaultPushSource`.

```
<?xml version="1.0" encoding="utf-8"?>
<configuration>
  <config>
    <add key="DefaultPushSource" value="C:\TC\LocalPackageSource" />
  </config>
```
##References

http://blog.davidebbo.com/2014/01/the-right-way-to-restore-nuget-packages.html

http://docs.nuget.org/docs/workflows/migrating-to-automatic-package-restore

http://docs.nuget.org/docs/reference/nuget-config-file

http://nuget.codeplex.com/releases/view/58939





