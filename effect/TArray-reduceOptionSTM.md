# reduceOptionSTM

Atomically reduce the non-empty array using a transactional binary
operator.

To import and use `reduceOptionSTM` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.reduceOptionSTM
```

**Signature**

```ts
export declare const reduceOptionSTM: {
  <A, R, E>(f: (x: A, y: A) => STM.STM<R, E, A>): (self: TArray<A>) => STM.STM<R, E, Option.Option<A>>
  <A, R, E>(self: TArray<A>, f: (x: A, y: A) => STM.STM<R, E, A>): STM.STM<R, E, Option.Option<A>>
}
```
