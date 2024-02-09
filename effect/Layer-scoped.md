# scoped

Constructs a layer from the specified scoped effect.

To import and use `scoped` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.scoped
```

**Signature**

```ts
export declare const scoped: {
  <T extends Context.Tag<any, any>>(
    tag: T
  ): <R, E>(
    effect: Effect.Effect<Context.Tag.Service<T>, E, R>
  ) => Layer<Context.Tag.Identifier<T>, E, Exclude<R, Scope.Scope>>
  <T extends Context.Tag<any, any>, R, E>(
    tag: T,
    effect: Effect.Effect<Context.Tag.Service<T>, E, R>
  ): Layer<Context.Tag.Identifier<T>, E, Exclude<R, Scope.Scope>>
}
```
