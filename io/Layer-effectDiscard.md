# effectDiscard

Constructs a layer from the specified effect discarding it's output.

To import and use `effectDiscard` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.effectDiscard
```

**Signature**

```ts
export declare const effectDiscard: <R, E, _>(effect: Effect.Effect<R, E, _>) => Layer<R, E, never>
```
