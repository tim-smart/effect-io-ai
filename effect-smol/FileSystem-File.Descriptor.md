Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.File.Descriptor

Branded type for file descriptors.

File descriptors are numeric handles used by the operating system
to identify open files. The branded type ensures type safety.

**Signature**

```ts
type Descriptor = Brand.Branded<number, "FileDescriptor">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1073)

Since v4.0.0