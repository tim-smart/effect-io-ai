# findAllSTM

Finds all the key/value pairs matching the specified predicate, and uses
the provided effectful function to extract values out of them..

To import and use `findAllSTM` from the "TMap" module:

```ts
import * as TMap from 'effect/TMap'

// Can be accessed like this
TMap.findAllSTM
```

**Signature**

```ts
export declare const findAllSTM: {
  <K, V, R, E, A>(pf: (key: K, value: V) => STM.STM<R, Option.Option<E>, A>): (self: TMap<K, V>) => STM.STM<R, E, A[]>
  <K, V, R, E, A>(self: TMap<K, V>, pf: (key: K, value: V) => STM.STM<R, Option.Option<E>, A>): STM.STM<R, E, A[]>
}
```
