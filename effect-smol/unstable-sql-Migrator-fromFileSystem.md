Package: `effect`<br />
Module: `Migrator`<br />

## Migrator.fromFileSystem

Creates a migration loader that reads a directory with `FileSystem`, imports
files named `<id>_<name>.js` or `<id>_<name>.ts`, and sorts migrations by id.

**Signature**

```ts
declare const fromFileSystem: (directory: string) => Loader<FileSystem>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Migrator.ts#L418)

Since v4.0.0