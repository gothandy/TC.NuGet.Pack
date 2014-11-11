#TC.NuGetPack

Utilities for automating the creation of NuGet packages.

##TC.NuGetPack.All

This utility runs through all the `.nuspec` files in your project folder and packs each one. In this scenario I assume you're specifiying your dependancies manually.

##TC.NuGetPack.Project

This utility inspects your project to build the `.nupkg' file. If you haven't added a correctly named `.nuspec` file one will be created which will need default settings changed.


