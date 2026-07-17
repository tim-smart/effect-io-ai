Package: `effect`<br />
Module: `Path`<br />

## Path.TypeId

Runtime type identifier used to mark implementations of the `Path` service.

**Details**

The marker is the exact string stored on `Path` service implementations.
Most code should depend on the `Path` service instead of inspecting this
value directly.

**See**

- `layer` for the built-in POSIX `Path` service layer

**Signature**

```ts
declare const TypeId: "~effect/platform/Path"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Path.ts#L32)

Since v4.0.0