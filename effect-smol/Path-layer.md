Package: `effect`<br />
Module: `Path`<br />

## Path.layer

Layer that provides the built-in POSIX `Path` implementation.

**When to use**

Use this layer when an effect requires the `Path` service and should use
forward-slash path semantics.

**Signature**

```ts
declare const layer: Layer.Layer<Path, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Path.ts#L864)

Since v4.0.0