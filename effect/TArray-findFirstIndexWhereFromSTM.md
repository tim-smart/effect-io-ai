# findFirstIndexWhereFromSTM

Starting at specified index, get the index of the next entry that matches a
transactional predicate.

To import and use `findFirstIndexWhereFromSTM` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.findFirstIndexWhereFromSTM
```

**Signature**

```ts
export declare const findFirstIndexWhereFromSTM: {
  <A, R, E>(
    predicate: (value: A) => STM.STM<R, E, boolean>,
    from: number
  ): (self: TArray<A>) => STM.STM<R, E, Option.Option<number>>
  <A, R, E>(
    self: TArray<A>,
    predicate: (value: A) => STM.STM<R, E, boolean>,
    from: number
  ): STM.STM<R, E, Option.Option<number>>
}
```
