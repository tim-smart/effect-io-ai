# tapErrorCause

Performs the specified effect if this layer fails.

To import and use `tapErrorCause` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.tapErrorCause
undefined

**Signature**

```ts
export declare const tapErrorCause: {
  <E, XE extends E, RIn2, E2, X>(
    f: (cause: Cause.Cause<XE>) => Effect.Effect<X, E2, RIn2>
  ): <RIn, ROut>(self: Layer<ROut, E, RIn>) => Layer<ROut, E | E2, RIn2 | RIn>
  <RIn, E, XE extends E, ROut, RIn2, E2, X>(
    self: Layer<ROut, E, RIn>,
    f: (cause: Cause.Cause<XE>) => Effect.Effect<X, E2, RIn2>
  ): Layer<ROut, E | E2, RIn | RIn2>
}
```
