# APublicizer

Another assembly publicizer made for C# modders.

---

## Key features

- Hides events' backing fields - fixes ambiguous references issues
- Native executable - works without a pre-installed .NET runtime

## Usage

Pass an assembly name/absolute path to executable and take publicized assembly with a `-Publicized` suffix.

### Usage Rules

- Output file name cannot be changed
- The number of arguments must be fixed to one
- All assembly dependencies must be in the same folder with the assembly itself

## Example

Imagine we have a folder `MyFavoriteFolder` with an assembly, for example `Assembly-CSharp.dll` and its dependencies.

Executing the following command produces `Assembly-CSharp-Publicized.dll` in the same folder:

```bash
APublicizer MyFavoriteFolder/Assembly-CSharp.dll
```
