# findFirst

Find the first element in the array matching the specified predicate.

To import and use `findFirst` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.findFirst
```

**Signature**

```ts
export declare const findFirst: {
  <A>(predicate: Predicate<A>): (self: TArray<A>) => STM.STM<Option.Option<A>, never, never>
  <A>(self: TArray<A>, predicate: Predicate<A>): STM.STM<Option.Option<A>, never, never>
}
```
