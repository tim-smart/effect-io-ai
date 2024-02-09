# reduceSTM

Atomically folds using a transactional function.

To import and use `reduceSTM` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.reduceSTM
```

**Signature**

```ts
export declare const reduceSTM: {
  <Z, A, R, E>(zero: Z, f: (accumulator: Z, current: A) => STM.STM<Z, E, R>): (self: TArray<A>) => STM.STM<Z, E, R>
  <Z, A, R, E>(self: TArray<A>, zero: Z, f: (accumulator: Z, current: A) => STM.STM<Z, E, R>): STM.STM<Z, E, R>
}
```
