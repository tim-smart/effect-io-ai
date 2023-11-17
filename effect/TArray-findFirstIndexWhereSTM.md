# findFirstIndexWhereSTM

Get the index of the next entry that matches a transactional predicate.

To import and use `findFirstIndexWhereSTM` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.findFirstIndexWhereSTM
```

**Signature**

```ts
export declare const findFirstIndexWhereSTM: {
  <A, R, E>(predicate: (value: A) => STM.STM<R, E, boolean>): (self: TArray<A>) => STM.STM<R, E, Option.Option<number>>
  <A, R, E>(self: TArray<A>, predicate: (value: A) => STM.STM<R, E, boolean>): STM.STM<R, E, Option.Option<number>>
}
```
