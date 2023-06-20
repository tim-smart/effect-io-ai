# tap

Performs the specified effect if this layer succeeds.

To import and use `tap` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.tap
```

**Signature**

```ts
export declare const tap: {
  <ROut, RIn2, E2, X>(f: (context: Context.Context<ROut>) => Effect.Effect<RIn2, E2, X>): <RIn, E>(
    self: Layer<RIn, E, ROut>
  ) => Layer<RIn2 | RIn, E2 | E, ROut>
  <RIn, E, ROut, RIn2, E2, X>(
    self: Layer<RIn, E, ROut>,
    f: (context: Context.Context<ROut>) => Effect.Effect<RIn2, E2, X>
  ): Layer<RIn | RIn2, E | E2, ROut>
}
```
