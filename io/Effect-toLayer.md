# toLayer

Constructs a layer from this effect.

To import and use `toLayer` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.toLayer
```

**Signature**

```ts
export declare const toLayer: {
  <I, A>(tag: Context.Tag<I, A>): <R, E>(self: Effect<R, E, A>) => Layer.Layer<R, E, I>
  <R, E, A, I>(self: Effect<R, E, A>, tag: Context.Tag<I, A>): Layer.Layer<R, E, I>
}
```
