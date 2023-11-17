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
  <A, R, E>(predicate: (a: A) => STM<R, E, boolean>): (iterable: Iterable<A>) => STM<R, E, A[]>
  <A, R, E>(iterable: Iterable<A>, predicate: (a: A) => STM<R, E, boolean>): STM<R, E, A[]>
}
```
