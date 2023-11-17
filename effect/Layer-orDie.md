# orDie

Translates effect failure into death of the fiber, making all failures
unchecked and not a part of the type of the layer.

To import and use `orDie` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.orDie
```

**Signature**

```ts
export declare const orDie: <R, E, A>(self: Layer<R, E, A>) => Layer<R, never, A>
```
