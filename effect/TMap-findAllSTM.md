# findAllSTM

Finds all the key/value pairs matching the specified predicate, and uses
the provided effectful function to extract values out of them..

To import and use `findAllSTM` from the "TMap" module:

ts
import \* as TMap from "effect/TMap"
// Can be accessed like this
TMap.findAllSTM
undefined

**Signature**

```ts
export declare const findAllSTM: {
  <K, V, A, E, R>(
    pf: (key: K, value: V) => STM.STM<A, Option.Option<E>, R>
  ): (self: TMap<K, V>) => STM.STM<Array<A>, E, R>
  <K, V, A, E, R>(self: TMap<K, V>, pf: (key: K, value: V) => STM.STM<A, Option.Option<E>, R>): STM.STM<Array<A>, E, R>
}
```
