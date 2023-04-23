# **This is .NET 8 Branch**
### The fist time I used AoT was .NET 5 and the feature was experimental. After that in .NET 7 they finally shipped it. The next major release, namely .NET 8, features AoT size improvements, which is currently being tested with APublicizer.
### You can download produced artifacts by CI [here (nightly.link)](https://nightly.link/iRebbok/APublicizer/workflows/build/dotnet8-aot), the layout is the same, except for archive extension, as of today, GitHub only supports `.zip`.
### There is a direct link to for different artifacts
- [native-linux-x64-release](https://nightly.link/iRebbok/APublicizer/workflows/build/dotnet8-aot/native-linux-x64-release)
- [native-linux-x64-debug](https://nightly.link/iRebbok/APublicizer/workflows/build/dotnet8-aot/native-linux-x64-debug)
- [native-win-x64-release](https://nightly.link/iRebbok/APublicizer/workflows/build/dotnet8-aot/native-win-x64-release)
- [native-linux-x64-debug](https://nightly.link/iRebbok/APublicizer/workflows/build/dotnet8-aot/native-win-x64-debug)
- [runtime-release](https://nightly.link/iRebbok/APublicizer/workflows/build/dotnet8-aot/runtime-release)
- [runtime-debug](https://nightly.link/iRebbok/APublicizer/workflows/build/dotnet8-aot/runtime-debug)

---

# APublicizer
Another assembly publicizer made for C# modders.

---

## Key features:
 - Hides events backing fields - fixes ambiguous references issues
 - Native executable - works without a pre-installed .NET runtime

## Usage
Pass a assembly name/path as argument and take a resulting assembly with a `-Publicized` suffix.<br>
 - Output file name cannot be changed
 - The number of arguments must be fixed to one
 - All assembly dependencies must be in the same folder with the assembly itself

## Example
Imagine we have a folder `MyFavoriteFolder` with a desired assembly to publicize `Assembly-CSharp.dll` and its dependencies.<br><br>

The following command produces a `Assembly-CSharp-Publicized.dll`
```ps
PS C:\MyFavoriteFolder> .\APublicizer Assembly-CSharp.dll
```
