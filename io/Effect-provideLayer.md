# provideLayer

Provides a layer to the effect, which translates it to another level.

To import and use `provideLayer` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.provideLayer
```

**Signature**

```ts
export declare const provideLayer: {
  <R0, E2, R>(layer: Layer.Layer<R0, E2, R>): <E, A>(self: Effect<R, E, A>) => Effect<R0, E2 | E, A>
  <R, E, A, R0, E2>(self: Effect<R, E, A>, layer: Layer.Layer<R0, E2, R>): Effect<R0, E | E2, A>
}
```