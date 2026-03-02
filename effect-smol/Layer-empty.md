Package: `effect`<br />
Module: `Layer`<br />

## Layer.empty

A Layer that constructs an empty ServiceMap.

This layer provides no services and can be used as a neutral element
in layer composition or as a starting point for building layers.

**Example**

```ts
import { Layer } from "effect"

const emptyLayer = Layer.empty
```

**Signature**

```ts
declare const empty: Layer<never, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L671)

Since v2.0.0