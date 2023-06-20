# letDiscard

Like bind for values

To import and use `letDiscard` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.letDiscard
```

**Signature**

```ts
export declare const letDiscard: {
  <N extends string, K, A>(tag: Exclude<N, keyof K>, f: A): <R, E>(
    self: Effect<R, E, K>
  ) => Effect<R, E, MergeRecord<K, { [k in N]: A }>>
  <R, E, K, N extends string, A>(self: Effect<R, E, K>, tag: Exclude<N, keyof K>, f: A): Effect<
    R,
    E,
    MergeRecord<K, { [k in N]: A }>
  >
}
```
