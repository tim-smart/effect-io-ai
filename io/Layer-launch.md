# launch

Builds this layer and uses it until it is interrupted. This is useful when
your entire application is a layer, such as an HTTP server.

To import and use `launch` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.launch
```

**Signature**

```ts
export declare const launch: <RIn, E, ROut>(self: Layer<RIn, E, ROut>) => Effect.Effect<RIn, E, never>
```
