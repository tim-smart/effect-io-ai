# forEach

Atomically performs transactional-effect for each element in set.

To import and use `forEach` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.forEach
```

**Signature**

```ts
export declare const forEach: {
  <A, R, E>(f: (value: A) => STM.STM<void, E, R>): (self: TSet<A>) => STM.STM<void, E, R>
  <A, R, E>(self: TSet<A>, f: (value: A) => STM.STM<void, E, R>): STM.STM<void, E, R>
}
```
