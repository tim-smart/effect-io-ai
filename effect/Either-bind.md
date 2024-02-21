# bind

Binds an effectful value in a `do` scope

To import and use `bind` from the "Either" module:

```ts
import * as Either from "effect/Either"
// Can be accessed like this
Either.bind
```

**Signature**

```ts
export declare const bind: {
  <N extends string, K, A, E2>(
    tag: Exclude<N, keyof K>,
    f: (_: K) => Either<A, E2>
  ): <E>(self: Either<K, E>) => Either<MergeRecord<K, { [k in N]: A }>, E2 | E>
  <K, E, N extends string, A, E2>(
    self: Either<E, K>,
    tag: Exclude<N, keyof K>,
    f: (_: K) => Either<A, E2>
  ): Either<MergeRecord<K, { [k in N]: A }>, E | E2>
}
```
