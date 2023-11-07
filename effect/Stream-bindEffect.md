# bindEffect

Binds an effectful value in a `do` scope

To import and use `bindEffect` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.bindEffect
```

**Signature**

```ts
export declare const bindEffect: {
  <N extends string, K, R2, E2, A>(
    tag: Exclude<N, keyof K>,
    f: (_: K) => Effect.Effect<R2, E2, A>,
    options?: { readonly concurrency?: number | 'unbounded'; readonly bufferSize?: number }
  ): <R, E>(self: Stream<R, E, K>) => Stream<R2 | R, E2 | E, Effect.MergeRecord<K, { [k in N]: A }>>
  <R, E, N extends string, K, R2, E2, A>(
    self: Stream<R, E, K>,
    tag: Exclude<N, keyof K>,
    f: (_: K) => Effect.Effect<R2, E2, A>,
    options?: { readonly concurrency?: number | 'unbounded'; readonly bufferSize?: number }
  ): Stream<R | R2, E | E2, Effect.MergeRecord<K, { [k in N]: A }>>
}
```
