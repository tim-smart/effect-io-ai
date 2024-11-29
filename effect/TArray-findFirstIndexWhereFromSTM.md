# findFirstIndexWhereFromSTM

Starting at specified index, get the index of the next entry that matches a
transactional predicate.

To import and use `findFirstIndexWhereFromSTM` from the "TArray" module:

ts
import \* as TArray from "effect/TArray"
// Can be accessed like this
TArray.findFirstIndexWhereFromSTM
undefined

**Signature**

```ts
export declare const findFirstIndexWhereFromSTM: {
  <A, R, E>(
    predicate: (value: A) => STM.STM<boolean, E, R>,
    from: number
  ): (self: TArray<A>) => STM.STM<Option.Option<number>, E, R>
  <A, R, E>(
    self: TArray<A>,
    predicate: (value: A) => STM.STM<boolean, E, R>,
    from: number
  ): STM.STM<Option.Option<number>, E, R>
}
```
