# isFresh

Returns `true` if the specified `Layer` is a fresh version that will not be
shared, `false` otherwise.

To import and use `isFresh` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.isFresh
undefined

**Signature**

```ts
export declare const isFresh: <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => boolean
```
