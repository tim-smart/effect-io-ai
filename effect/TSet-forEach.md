# forEach

Atomically performs transactional-effect for each element in set.

To import and use `forEach` from the "TSet" module:

```ts
import * as TSet from 'effect/TSet'

// Can be accessed like this
TSet.forEach
```

**Signature**

```ts
export declare const forEach: {
  <A, R, E>(f: (value: A) => STM.STM<R, E, void>): (self: TSet<A>) => STM.STM<R, E, void>
  <A, R, E>(self: TSet<A>, f: (value: A) => STM.STM<R, E, void>): STM.STM<R, E, void>
}
```
