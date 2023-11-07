# findFirstIndexFrom

Get the first index of a specific value in the array starting from the
specified index.

To import and use `findFirstIndexFrom` from the "TArray" module:

```ts
import * as TArray from 'effect/TArray'

// Can be accessed like this
TArray.findFirstIndexFrom
```

**Signature**

```ts
export declare const findFirstIndexFrom: {
  <A>(value: A, from: number): (self: TArray<A>) => STM.STM<never, never, Option.Option<number>>
  <A>(self: TArray<A>, value: A, from: number): STM.STM<never, never, Option.Option<number>>
}
```
