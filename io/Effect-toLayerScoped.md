# toLayerScoped

Constructs a layer from this effect.

To import and use `toLayerScoped` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.toLayerScoped
```

**Signature**

```ts
export declare const toLayerScoped: {
  <I, A>(tag: Context.Tag<I, A>): <R, E>(self: Effect<R, E, A>) => Layer.Layer<Exclude<R, Scope.Scope>, E, I>
  <R, E, I, A>(self: Effect<R, E, A>, tag: Context.Tag<I, A>): Layer.Layer<Exclude<R, Scope.Scope>, E, I>
}
```
