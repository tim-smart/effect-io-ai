Package: `effect`<br />
Module: `Layer`<br />

## Layer.empty

An empty layer that provides no services, cannot fail, has no requirements,
and performs no construction or finalization work.

**When to use**

Use as the no-op branch when conditionally composing layers.

**Example** (Disabling optional lifecycle work)

```ts
import { Console, Layer } from "effect"

declare const flag: boolean

const StartupLogLive = flag
  ? Layer.effectDiscard(Console.log("application starting"))
  : Layer.empty
```

**See**

- `effectDiscard` for running an effect while providing no services

**Signature**

```ts
declare const empty: Layer<never, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L856)

Since v2.0.0