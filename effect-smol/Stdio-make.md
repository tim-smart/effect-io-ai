Package: `effect`<br />
Module: `Stdio`<br />

## Stdio.make

Creates a `Stdio` service implementation from the provided fields and
attaches the `Stdio` type identifier.

**When to use**

Use to assemble a concrete `Stdio` service when you already have
implementations for command-line arguments, standard output, standard error,
and standard input.

**Details**

The returned service reuses the supplied fields unchanged and only adds the
`Stdio` type identifier; it does not create a `Layer` or provide defaults.

**See**

- `layerTest` for a test layer with default fields that can be overridden

**Signature**

```ts
declare const make: (options: Omit<Stdio, TypeId>) => Stdio
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stdio.ts#L128)

Since v4.0.0