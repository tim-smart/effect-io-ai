# findLastSTM

Find the last element in the array matching a transactional predicate.

To import and use `findLastSTM` from the "TArray" module:

ts
import \* as TArray from "effect/TArray"
// Can be accessed like this
TArray.findLastSTM
undefined

**Signature**

```ts
export declare const findLastSTM: {
  <A, R, E>(predicate: (value: A) => STM.STM<boolean, E, R>): (self: TArray<A>) => STM.STM<Option.Option<A>, E, R>
  <A, R, E>(self: TArray<A>, predicate: (value: A) => STM.STM<boolean, E, R>): STM.STM<Option.Option<A>, E, R>
}
```
