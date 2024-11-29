# launch

Builds this layer and uses it until it is interrupted. This is useful when
your entire application is a layer, such as an HTTP server.

To import and use `launch` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.launch
undefined

**Signature**

```ts
export declare const launch: <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Effect.Effect<never, E, RIn>
```
