Package: `effect`<br />
Module: `FileSystem`<br />

## FileSystem.FileDescriptor

Creates a `File.Descriptor` from a number.

**When to use**

Use to brand an operating-system file descriptor number when implementing a
`FileSystem` that returns custom `File` handles.

**Details**

`File.Descriptor` is a branded integer handle used by operating systems to
identify open files.

**Gotchas**

This constructor is nominal and does not check that the number is an integer
or that it refers to an open file descriptor.

**See**

- `File.Descriptor` for the branded descriptor type produced by this constructor
- `File` for file handles that expose a descriptor through `fd`

**Signature**

```ts
declare const FileDescriptor: Brand.Constructor<File.Descriptor>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FileSystem.ts#L1267)

Since v4.0.0