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
  <A, R, E>(predicate: (a: NoInfer<A>) => STM<R, E, boolean>): (iterable: Iterable<A>) => STM<R, E, A[]>
  <A, R, E>(iterable: Iterable<A>, predicate: (a: A) => STM<R, E, boolean>): STM<R, E, A[]>
}
```
