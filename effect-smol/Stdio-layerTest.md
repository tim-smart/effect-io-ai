Package: `effect`<br />
Module: `Stdio`<br />

## Stdio.layerTest

Creates a test layer for `Stdio`.

**When to use**

Use to provide deterministic standard I/O in tests while overriding only the
command-line arguments, input stream, or output sinks relevant to the case.

**Details**

Any provided fields override defaults. By default, arguments are empty,
standard output and error are draining sinks, and standard input is an empty
stream.

**See**

- `make` for constructing a `Stdio` service directly without a `Layer` or defaults

**Signature**

```ts
declare const layerTest: (impl: Partial<Stdio>) => Layer.Layer<Stdio>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stdio.ts#L153)

Since v4.0.0