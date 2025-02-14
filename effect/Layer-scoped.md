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
  <I, S>(
    tag: Context.Tag<I, S>
  ): <E, R>(effect: Effect.Effect<Types.NoInfer<S>, E, R>) => Layer<I, E, Exclude<R, Scope.Scope>>
  <I, S, E, R>(
    tag: Context.Tag<I, S>,
    effect: Effect.Effect<Types.NoInfer<S>, E, R>
  ): Layer<I, E, Exclude<R, Scope.Scope>>
}
```
