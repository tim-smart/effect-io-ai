# catchAll

Recovers from all errors.

To import and use `catchAll` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.catchAll
undefined

**Signature**

```ts
export declare const catchAll: {
  <E, RIn2, E2, ROut2>(
    onError: (error: E) => Layer<ROut2, E2, RIn2>
  ): <RIn, ROut>(self: Layer<ROut, E, RIn>) => Layer<ROut & ROut2, E2, RIn2 | RIn>
  <RIn, E, ROut, RIn2, E2, ROut2>(
    self: Layer<ROut, E, RIn>,
    onError: (error: E) => Layer<ROut2, E2, RIn2>
  ): Layer<ROut & ROut2, E2, RIn | RIn2>
}
```
