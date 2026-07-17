Package: `effect`<br />
Module: `Stdio`<br />

## Stdio.make

Creates a `Stdio` service implementation from the provided fields and
attaches the `Stdio` type identifier.

**When to use**

Use when you need to assemble a concrete `Stdio` service from command-line
arguments and standard I/O implementations.

**Details**

The returned service reuses the supplied fields unchanged and only adds the
`Stdio` type identifier; it does not create a `Layer` or provide defaults.

**See**

- `layerTest` for a test layer with default fields that can be overridden

**Signature**

```ts
declare const make: (options: Omit<Stdio, TypeId>) => Stdio
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stdio.ts#L109)

Since v4.0.0