# countSTM

Count the values in the array matching a transactional predicate.

To import and use `countSTM` from the "TArray" module:

```ts
import * as TArray from 'effect/TArray'

// Can be accessed like this
TArray.countSTM
```

**Signature**

```ts
export declare const countSTM: {
  <A, R, E>(predicate: (value: A) => STM.STM<R, E, boolean>): (self: TArray<A>) => STM.STM<R, E, number>
  <A, R, E>(self: TArray<A>, predicate: (value: A) => STM.STM<R, E, boolean>): STM.STM<R, E, number>
}
```
