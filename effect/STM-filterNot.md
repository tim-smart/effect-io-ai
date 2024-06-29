# filterNot

Filters the collection using the specified effectual predicate, removing
all elements that satisfy the predicate.

To import and use `filterNot` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.filterNot
```

**Signature**

```ts
export declare const filterNot: {
  <A, R, E>(predicate: (a: NoInfer<A>) => STM<boolean, E, R>): (iterable: Iterable<A>) => STM<A[], E, R>
  <A, R, E>(iterable: Iterable<A>, predicate: (a: A) => STM<boolean, E, R>): STM<A[], E, R>
}
```
