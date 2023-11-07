# transformSTM

Atomically updates all elements using a transactional function.

To import and use `transformSTM` from the "TSet" module:

```ts
import * as TSet from 'effect/TSet'

// Can be accessed like this
TSet.transformSTM
```

**Signature**

```ts
export declare const transformSTM: {
  <A, R, E>(f: (a: A) => STM.STM<R, E, A>): (self: TSet<A>) => STM.STM<R, E, void>
  <A, R, E>(self: TSet<A>, f: (a: A) => STM.STM<R, E, A>): STM.STM<R, E, void>
}
```
