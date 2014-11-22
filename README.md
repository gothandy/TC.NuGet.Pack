#TC.NuGetPack

Utilities for automating the creation of NuGet packages.
The NuGet.exe used is the bootstrapper version.

##TC.NuGetPack.All

This utility runs through all the `.nuspec` files in your
project folder and packs each one. In this scenario I assume
you're specifiying your dependancies manually.

http://www.nuget.org/packages/TC.NuGetPack.All/

##TC.NuGetPack.Project

This utility inspects your project to build the `.nupkg` file.
If you haven't added a correctly named `.nuspec` file one will
be created which will need default settings changed.

https://www.nuget.org/packages/TC.NuGetPack.Project/

To stop this utility appearing as a dependancy add the following
to your project `packages.config` file.

```
<package id="TC.NuGetPack.Project" version="1.0.0.0" targetFramework="net45" developmentDependency="true" />
```

##Setup

Given these utilities push a package after ever build it is often
easier to work with a local Package Source. In your `NuGet.Config`
add in a `DefaultPushSource`.

```
<?xml version="1.0" encoding="utf-8"?>
<configuration>
  <config>
    <add key="DefaultPushSource" value="c:\TC\Local Package Source" />
```
##Reference

http://blog.davidebbo.com/2014/01/the-right-way-to-restore-nuget-packages.html
http://docs.nuget.org/docs/workflows/migrating-to-automatic-package-restore
http://docs.nuget.org/docs/reference/nuget-config-file
http://nuget.codeplex.com/releases/view/58939





