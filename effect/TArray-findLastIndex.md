# findLastIndex

Get the last index of a specific value in the array bounded above by a
specific index.

To import and use `findLastIndex` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.findLastIndex
```

**Signature**

```ts
export declare const findLastIndex: {
  <A>(value: A): (self: TArray<A>) => STM.STM<Option.Option<number>>
  <A>(self: TArray<A>, value: A): STM.STM<Option.Option<number>>
}
```
