# takeFirstSTM

Takes the first matching value, or retries until there is one.

To import and use `takeFirstSTM` from the "TMap" module:

ts
import \* as TMap from "effect/TMap"
// Can be accessed like this
TMap.takeFirstSTM
undefined

**Signature**

```ts
export declare const takeFirstSTM: {
  <K, V, A, E, R>(pf: (key: K, value: V) => STM.STM<A, Option.Option<E>, R>): (self: TMap<K, V>) => STM.STM<A, E, R>
  <K, V, A, E, R>(self: TMap<K, V>, pf: (key: K, value: V) => STM.STM<A, Option.Option<E>, R>): STM.STM<A, E, R>
}
```
