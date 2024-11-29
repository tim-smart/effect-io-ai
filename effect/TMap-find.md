# find

Finds the key/value pair matching the specified predicate, and uses the
provided function to extract a value out of it.

To import and use `find` from the "TMap" module:

ts
import \* as TMap from "effect/TMap"
// Can be accessed like this
TMap.find
undefined

**Signature**

```ts
export declare const find: {
  <K, V, A>(pf: (key: K, value: V) => Option.Option<A>): (self: TMap<K, V>) => STM.STM<Option.Option<A>>
  <K, V, A>(self: TMap<K, V>, pf: (key: K, value: V) => Option.Option<A>): STM.STM<Option.Option<A>>
}
```
