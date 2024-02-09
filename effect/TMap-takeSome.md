# takeSome

Takes all matching values, or retries until there is at least one.

To import and use `takeSome` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.takeSome
```

**Signature**

```ts
export declare const takeSome: {
  <K, V, A>(pf: (key: K, value: V) => Option.Option<A>): (self: TMap<K, V>) => STM.STM<[A, ...A[]], never, never>
  <K, V, A>(self: TMap<K, V>, pf: (key: K, value: V) => Option.Option<A>): STM.STM<[A, ...A[]], never, never>
}
```
