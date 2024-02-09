# bind

Binds an effectful value in a `do` scope

To import and use `bind` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.bind
```

**Signature**

```ts
export declare const bind: {
  <N extends string, K, A, E2, R2>(
    tag: Exclude<N, keyof K>,
    f: (_: K) => Effect<A, E2, R2>
  ): <E, R>(self: Effect<K, E, R>) => Effect<MergeRecord<K, { [k in N]: A }>, E2 | E, R2 | R>
  <K, E, R, N extends string, A, E2, R2>(
    self: Effect<K, E, R>,
    tag: Exclude<N, keyof K>,
    f: (_: K) => Effect<A, E2, R2>
  ): Effect<MergeRecord<K, { [k in N]: A }>, E | E2, R | R2>
}
```
