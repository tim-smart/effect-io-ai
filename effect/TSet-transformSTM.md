# transformSTM

Atomically updates all elements using a transactional function.

To import and use `transformSTM` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.transformSTM
```

**Signature**

```ts
export declare const transformSTM: {
  <A, R, E>(f: (a: A) => STM.STM<A, E, R>): (self: TSet<A>) => STM.STM<void, E, R>
  <A, R, E>(self: TSet<A>, f: (a: A) => STM.STM<A, E, R>): STM.STM<void, E, R>
}
```
