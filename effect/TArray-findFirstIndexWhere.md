# findFirstIndexWhere

Get the index of the first entry in the array matching a predicate.

To import and use `findFirstIndexWhere` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.findFirstIndexWhere
```

**Signature**

```ts
export declare const findFirstIndexWhere: {
  <A>(predicate: Predicate<A>): (self: TArray<A>) => STM.STM<Option.Option<number>>
  <A>(self: TArray<A>, predicate: Predicate<A>): STM.STM<Option.Option<number>>
}
```
