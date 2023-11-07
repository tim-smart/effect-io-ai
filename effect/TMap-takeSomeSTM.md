# takeSomeSTM

Takes all matching values, or retries until there is at least one.

To import and use `takeSomeSTM` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.takeSomeSTM
```

**Signature**

```ts
export declare const takeSomeSTM: {
  <K, V, R, E, A>(pf: (key: K, value: V) => STM.STM<R, Option.Option<E>, A>): (
    self: TMap<K, V>
  ) => STM.STM<R, E, [A, ...A[]]>
  <K, V, R, E, A>(self: TMap<K, V>, pf: (key: K, value: V) => STM.STM<R, Option.Option<E>, A>): STM.STM<
    R,
    E,
    [A, ...A[]]
  >
}
```
