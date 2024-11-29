# filterNot

Filters the collection using the specified effectual predicate, removing
all elements that satisfy the predicate.

To import and use `filterNot` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.filterNot
undefined

**Signature**

```ts
export declare const filterNot: {
  <A, R, E>(predicate: (a: NoInfer<A>) => STM<boolean, E, R>): (iterable: Iterable<A>) => STM<Array<A>, E, R>
  <A, R, E>(iterable: Iterable<A>, predicate: (a: A) => STM<boolean, E, R>): STM<Array<A>, E, R>
}
```
