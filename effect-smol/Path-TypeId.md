Package: `effect`<br />
Module: `Path`<br />

## Path.TypeId

Runtime type identifier used to mark implementations of the `Path` service.

**When to use**

Use when implementing or inspecting a custom `Path` service value that must
carry the runtime marker.

**Details**

The marker is the exact string stored on `Path` service implementations.

**See**

- `layer` for the built-in POSIX `Path` service layer

**Signature**

```ts
declare const TypeId: "~effect/platform/Path"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Path.ts#L57)

Since v4.0.0