# findFirstIndexWhereSTM

Get the index of the next entry that matches a transactional predicate.

To import and use `findFirstIndexWhereSTM` from the "TArray" module:

ts
import \* as TArray from "effect/TArray"
// Can be accessed like this
TArray.findFirstIndexWhereSTM
undefined

**Signature**

```ts
export declare const findFirstIndexWhereSTM: {
  <A, R, E>(predicate: (value: A) => STM.STM<boolean, E, R>): (self: TArray<A>) => STM.STM<Option.Option<number>, E, R>
  <A, R, E>(self: TArray<A>, predicate: (value: A) => STM.STM<boolean, E, R>): STM.STM<Option.Option<number>, E, R>
}
```
