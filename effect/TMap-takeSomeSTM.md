# takeSomeSTM

Takes all matching values, or retries until there is at least one.

To import and use `takeSomeSTM` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.takeSomeSTM
```

**Signature**

```ts
export declare const takeSomeSTM: {
  <K, V, A, E, R>(
    pf: (key: K, value: V) => STM.STM<A, Option.Option<E>, R>
  ): (self: TMap<K, V>) => STM.STM<[A, ...Array<A>], E, R>
  <K, V, A, E, R>(
    self: TMap<K, V>,
    pf: (key: K, value: V) => STM.STM<A, Option.Option<E>, R>
  ): STM.STM<[A, ...Array<A>], E, R>
}
```
