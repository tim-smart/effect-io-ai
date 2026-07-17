Package: `effect`<br />
Module: `Path`<br />

## Path.layer

Layer that provides the built-in POSIX `Path` implementation.

**When to use**

Use when you need an effect that requires the `Path` service to run with the
built-in POSIX path implementation.

**Details**

The layer provides a static service whose separator is `/` and whose
operations use POSIX path semantics.

**See**

- `Path` for accessing the `Path` service from an effect

**Signature**

```ts
declare const layer: Layer.Layer<Path, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Path.ts#L870)

Since v4.0.0