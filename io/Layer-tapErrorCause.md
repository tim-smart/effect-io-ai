# tapErrorCause

Performs the specified effect if this layer fails.

To import and use `tapErrorCause` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.tapErrorCause
```

**Signature**

```ts
export declare const tapErrorCause: {
  <E, RIn2, E2, X>(f: (cause: Cause.Cause<E>) => Effect.Effect<RIn2, E2, X>): <RIn, ROut>(
    self: Layer<RIn, E, ROut>
  ) => Layer<RIn2 | RIn, E | E2, ROut>
  <RIn, E, ROut, RIn2, E2, X>(
    self: Layer<RIn, E, ROut>,
    f: (cause: Cause.Cause<E>) => Effect.Effect<RIn2, E2, X>
  ): Layer<RIn | RIn2, E | E2, ROut>
}
```