# countSTM

Count the values in the array matching a transactional predicate.

To import and use `countSTM` from the "TArray" module:

ts
import \* as TArray from "effect/TArray"
// Can be accessed like this
TArray.countSTM
undefined

**Signature**

```ts
export declare const countSTM: {
  <A, R, E>(predicate: (value: A) => STM.STM<boolean, E, R>): (self: TArray<A>) => STM.STM<number, E, R>
  <A, R, E>(self: TArray<A>, predicate: (value: A) => STM.STM<boolean, E, R>): STM.STM<number, E, R>
}
```
