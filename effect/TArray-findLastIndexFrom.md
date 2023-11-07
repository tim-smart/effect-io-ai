# findLastIndexFrom

Get the last index of a specific value in the array bounded above by a
specific index.

To import and use `findLastIndexFrom` from the "TArray" module:

```ts
import * as TArray from 'effect/TArray'

// Can be accessed like this
TArray.findLastIndexFrom
```

**Signature**

```ts
export declare const findLastIndexFrom: {
  <A>(value: A, end: number): (self: TArray<A>) => STM.STM<never, never, Option.Option<number>>
  <A>(self: TArray<A>, value: A, end: number): STM.STM<never, never, Option.Option<number>>
}
```
