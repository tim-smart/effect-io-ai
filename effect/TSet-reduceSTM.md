# reduceSTM

Atomically folds using a transactional function.

To import and use `reduceSTM` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.reduceSTM
```

**Signature**

```ts
export declare const reduceSTM: {
  <Z, A, R, E>(zero: Z, f: (accumulator: Z, value: A) => STM.STM<Z, E, R>): (self: TSet<A>) => STM.STM<Z, E, R>
  <Z, A, R, E>(self: TSet<A>, zero: Z, f: (accumulator: Z, value: A) => STM.STM<Z, E, R>): STM.STM<Z, E, R>
}
```
