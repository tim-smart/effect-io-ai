Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.isFile

Type guard to check if a value is a File instance.

This function determines whether the provided value is a valid File
instance by checking for the presence of the File type identifier.

**Signature**

```ts
declare const isFile: (u: unknown) => u is File
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1003)

Since v4.0.0