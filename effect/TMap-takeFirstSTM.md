# takeFirstSTM

Takes the first matching value, or retries until there is one.

To import and use `takeFirstSTM` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.takeFirstSTM
```

**Signature**

```ts
export declare const takeFirstSTM: {
  <K, V, R, E, A>(pf: (key: K, value: V) => STM.STM<R, Option.Option<E>, A>): (self: TMap<K, V>) => STM.STM<R, E, A>
  <K, V, R, E, A>(self: TMap<K, V>, pf: (key: K, value: V) => STM.STM<R, Option.Option<E>, A>): STM.STM<R, E, A>
}
```
