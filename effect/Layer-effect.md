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
  ): <E, R>(effect: Effect.Effect<Context.Tag.Service<T>, E, R>) => Layer<Context.Tag.Identifier<T>, E, R>
  <T extends Context.Tag<any, any>, E, R>(
    tag: T,
    effect: Effect.Effect<Context.Tag.Service<T>, E, R>
  ): Layer<Context.Tag.Identifier<T>, E, R>
}
```
