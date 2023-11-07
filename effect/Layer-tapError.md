# tapError

Performs the specified effect if this layer fails.

To import and use `tapError` from the "Layer" module:

```ts
import * as Layer from 'effect/Layer'

// Can be accessed like this
Layer.tapError
```

**Signature**

```ts
export declare const tapError: {
  <E, XE extends E, RIn2, E2, X>(f: (e: XE) => Effect.Effect<RIn2, E2, X>): <RIn, ROut>(
    self: Layer<RIn, E, ROut>
  ) => Layer<RIn2 | RIn, E | E2, ROut>
  <RIn, E, XE extends E, ROut, RIn2, E2, X>(self: Layer<RIn, E, ROut>, f: (e: XE) => Effect.Effect<RIn2, E2, X>): Layer<
    RIn | RIn2,
    E | E2,
    ROut
  >
}
```
