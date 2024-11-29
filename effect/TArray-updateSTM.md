# updateSTM

Atomically updates element in the array with given transactional effect.

To import and use `updateSTM` from the "TArray" module:

ts
import \* as TArray from "effect/TArray"
// Can be accessed like this
TArray.updateSTM
undefined

**Signature**

```ts
export declare const updateSTM: {
  <A, R, E>(index: number, f: (value: A) => STM.STM<A, E, R>): (self: TArray<A>) => STM.STM<void, E, R>
  <A, R, E>(self: TArray<A>, index: number, f: (value: A) => STM.STM<A, E, R>): STM.STM<void, E, R>
}
```
