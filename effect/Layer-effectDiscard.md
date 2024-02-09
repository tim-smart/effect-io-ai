# effectDiscard

Constructs a layer from the specified effect discarding it's output.

To import and use `effectDiscard` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.effectDiscard
```

**Signature**

```ts
export declare const effectDiscard: <_, E, R>(effect: Effect.Effect<_, E, R>) => Layer<never, E, R>
```
