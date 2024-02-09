# findSTM

Finds the key/value pair matching the specified predicate, and uses the
provided effectful function to extract a value out of it.

To import and use `findSTM` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.findSTM
```

**Signature**

```ts
export declare const findSTM: {
  <K, V, R, E, A>(
    f: (key: K, value: V) => STM.STM<A, Option.Option<E>, R>
  ): (self: TMap<K, V>) => STM.STM<Option.Option<A>, E, R>
  <K, V, R, E, A>(
    self: TMap<K, V>,
    f: (key: K, value: V) => STM.STM<A, Option.Option<E>, R>
  ): STM.STM<Option.Option<A>, E, R>
}
```
