# findAll

Finds all the key/value pairs matching the specified predicate, and uses
the provided function to extract values out them.

To import and use `findAll` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.findAll
```

**Signature**

```ts
export declare const findAll: {
  <K, V, A>(pf: (key: K, value: V) => Option.Option<A>): (self: TMap<K, V>) => STM.STM<Array<A>>
  <K, V, A>(self: TMap<K, V>, pf: (key: K, value: V) => Option.Option<A>): STM.STM<Array<A>>
}
```
