Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.FileDescriptor

Creates a branded file descriptor.

File descriptors are integer handles that the operating system uses to identify
open files. This branded type ensures type safety when working with file descriptors.

**Signature**

```ts
declare const FileDescriptor: Brand.Constructor<File.Descriptor>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/FileSystem.ts#L1151)

Since v4.0.0