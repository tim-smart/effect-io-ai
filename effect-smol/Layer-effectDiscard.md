Package: `effect`<br />
Module: `Layer`<br />

## Layer.effectDiscard

Constructs a layer from the specified scoped effect.

This is useful when you want to run an Effect for its side effects during
layer construction, but don't need to provide any services.

**Example** (Running an effect during layer construction)

```ts
import { Effect, Layer } from "effect"

const initLayer = Layer.effectDiscard(
  Effect.sync(() => {
    console.log("Initializing application...")
  })
)
```

**Signature**

```ts
declare const effectDiscard: <X, E, R>(effect: Effect<X, E, R>) => Layer<never, E, Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L936)

Since v2.0.0