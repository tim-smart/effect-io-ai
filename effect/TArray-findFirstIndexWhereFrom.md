# findFirstIndexWhereFrom

Get the index of the first entry in the array starting from the specified
index, matching a predicate.

To import and use `findFirstIndexWhereFrom` from the "TArray" module:

```ts
import * as TArray from 'effect/TArray'

// Can be accessed like this
TArray.findFirstIndexWhereFrom
```

**Signature**

```ts
export declare const findFirstIndexWhereFrom: {
  <A>(predicate: Predicate<A>, from: number): (self: TArray<A>) => STM.STM<never, never, Option.Option<number>>
  <A>(self: TArray<A>, predicate: Predicate<A>, from: number): STM.STM<never, never, Option.Option<number>>
}
```
