# findFirstIndex

Get the first index of a specific value in the array.

To import and use `findFirstIndex` from the "TArray" module:

ts
import \* as TArray from "effect/TArray"
// Can be accessed like this
TArray.findFirstIndex
undefined

**Signature**

```ts
export declare const findFirstIndex: {
  <A>(value: A): (self: TArray<A>) => STM.STM<Option.Option<number>>
  <A>(self: TArray<A>, value: A): STM.STM<Option.Option<number>>
}
```
