# catchAllCause

Recovers from all errors.

To import and use `catchAllCause` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.catchAllCause
```

**Signature**

```ts
export declare const catchAllCause: {
  <E, RIn2, E2, ROut2>(
    onError: (cause: Cause.Cause<E>) => Layer<ROut2, E2, RIn2>
  ): <RIn, ROut>(self: Layer<ROut, E, RIn>) => Layer<ROut & ROut2, E2, RIn2 | RIn>
  <RIn, E, ROut, RIn2, E2, ROut22>(
    self: Layer<ROut, E, RIn>,
    onError: (cause: Cause.Cause<E>) => Layer<ROut22, E2, RIn2>
  ): Layer<ROut & ROut22, E2, RIn | RIn2>
}
```
