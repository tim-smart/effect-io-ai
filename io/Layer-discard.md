# discard

Replaces the layer's output with `void` and includes the layer only for its
side-effects.

To import and use `discard` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.discard
```

**Signature**

```ts
export declare const discard: <RIn, E, ROut>(self: Layer<RIn, E, ROut>) => Layer<RIn, E, never>
```
