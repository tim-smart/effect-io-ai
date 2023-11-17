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
  <T extends Context.Tag<any, any>>(
    tag: T
  ): <R, E>(effect: Effect.Effect<R, E, Context.Tag.Service<T>>) => Layer<R, E, Context.Tag.Identifier<T>>
  <T extends Context.Tag<any, any>, R, E>(
    tag: T,
    effect: Effect.Effect<R, E, Context.Tag.Service<T>>
  ): Layer<R, E, Context.Tag.Identifier<T>>
}
```
