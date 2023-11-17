# some

Determine if the array contains a value satisfying a predicate.

To import and use `some` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.some
```

**Signature**

```ts
export declare const some: {
  <A>(predicate: Predicate<A>): (self: TArray<A>) => STM.STM<never, never, boolean>
  <A>(self: TArray<A>, predicate: Predicate<A>): STM.STM<never, never, boolean>
}
```
