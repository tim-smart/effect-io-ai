# filter

Filters the collection using the specified effectual predicate.

To import and use `filter` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.filter
```

**Signature**

```ts
export declare const filter: {
  <A, R, E>(predicate: (a: NoInfer<A>) => STM<boolean, E, R>): (iterable: Iterable<A>) => STM<A[], E, R>
  <A, R, E>(iterable: Iterable<A>, predicate: (a: A) => STM<boolean, E, R>): STM<A[], E, R>
}
```
