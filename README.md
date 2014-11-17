#TC.NuGetPack

Utilities for automating the creation of NuGet packages.

##TC.NuGetPack.All

This utility runs through all the `.nuspec` files in your project folder and packs each one. In this scenario I assume you're specifiying your dependancies manually.

http://www.nuget.org/packages/TC.NuGetPack.All/

##TC.NuGetPack.Project

This utility inspects your project to build the `.nupkg` file. If you haven't added a correctly named `.nuspec` file one will be created which will need default settings changed.

https://www.nuget.org/packages/TC.NuGetPack.Project/

To stop this utility appearing as a dependancy add the following to your project `packages.config` file.

```
<package id="TC.NuGetPack.Project" version="1.0.0.0" targetFramework="net45" developmentDependency="true" />
```

##Setup

Both utilities currently require a `packages` folder creating in the `.nuget` folder found in the root of your solution.




