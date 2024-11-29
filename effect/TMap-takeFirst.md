# takeFirst

Takes the first matching value, or retries until there is one.

To import and use `takeFirst` from the "TMap" module:

ts
import \* as TMap from "effect/TMap"
// Can be accessed like this
TMap.takeFirst
undefined

**Signature**

```ts
export declare const takeFirst: {
  <K, V, A>(pf: (key: K, value: V) => Option.Option<A>): (self: TMap<K, V>) => STM.STM<A>
  <K, V, A>(self: TMap<K, V>, pf: (key: K, value: V) => Option.Option<A>): STM.STM<A>
}
```
