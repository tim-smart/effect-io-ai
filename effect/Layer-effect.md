# effect

Constructs a layer from the specified effect.

To import and use `effect` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.effect
```

**Signature**

```ts
export declare const effect: {
  <I, S>(tag: Context.Tag<I, S>): <E, R>(effect: Effect.Effect<Types.NoInfer<S>, E, R>) => Layer<I, E, R>
  <I, S, E, R>(tag: Context.Tag<I, S>, effect: Effect.Effect<Types.NoInfer<S>, E, R>): Layer<I, E, R>
}
```
