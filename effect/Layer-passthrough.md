# passthrough

Returns a new layer that produces the outputs of this layer but also
passes through the inputs.

To import and use `passthrough` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.passthrough
undefined

**Signature**

```ts
export declare const passthrough: <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Layer<RIn | ROut, E, RIn>
```
