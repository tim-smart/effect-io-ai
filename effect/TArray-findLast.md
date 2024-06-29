# findLast

Find the last element in the array matching a predicate.

To import and use `findLast` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.findLast
```

**Signature**

```ts
export declare const findLast: {
  <A>(predicate: Predicate<A>): (self: TArray<A>) => STM.STM<Option.Option<A>, never, never>
  <A>(self: TArray<A>, predicate: Predicate<A>): STM.STM<Option.Option<A>, never, never>
}
```
