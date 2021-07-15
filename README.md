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
