Package: `effect`<br />
Module: `Stdio`<br />

## Stdio.layerTest

Creates a test layer for `Stdio`.

**Details**

Any provided fields override defaults. By default, arguments are empty,
standard output and error are draining sinks, and standard input is an empty
stream.

**Signature**

```ts
declare const layerTest: (impl: Partial<Stdio>) => Layer.Layer<Stdio>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stdio.ts#L98)

Since v4.0.0