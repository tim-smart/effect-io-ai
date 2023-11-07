# someSTM

Determine if the array contains a value satisfying a transactional
predicate.

To import and use `someSTM` from the "TArray" module:

```ts
import * as TArray from 'effect/TArray'

// Can be accessed like this
TArray.someSTM
```

**Signature**

```ts
export declare const someSTM: {
  <A, R, E>(predicate: (value: A) => STM.STM<R, E, boolean>): (self: TArray<A>) => STM.STM<R, E, boolean>
  <A, R, E>(self: TArray<A>, predicate: (value: A) => STM.STM<R, E, boolean>): STM.STM<R, E, boolean>
}
```
