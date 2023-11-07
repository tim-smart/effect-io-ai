# bind

Binds an effectful value in a `do` scope

To import and use `bind` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.bind
```

**Signature**

```ts
export declare const bind: {
  <N extends string, K, R2, E2, A>(tag: Exclude<N, keyof K>, f: (_: K) => Effect<R2, E2, A>): <R, E>(
    self: Effect<R, E, K>
  ) => Effect<R2 | R, E2 | E, MergeRecord<K, { [k in N]: A }>>
  <R, E, N extends string, K, R2, E2, A>(
    self: Effect<R, E, K>,
    tag: Exclude<N, keyof K>,
    f: (_: K) => Effect<R2, E2, A>
  ): Effect<R | R2, E | E2, MergeRecord<K, { [k in N]: A }>>
}
```
