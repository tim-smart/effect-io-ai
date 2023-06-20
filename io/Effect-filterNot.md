# filterNot

Filters the collection using the specified effectual predicate, removing
all elements that satisfy the predicate.

To import and use `filterNot` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.filterNot
```

**Signature**

```ts
export declare const filterNot: {
  <A, R, E>(f: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, A[]>
  <A, R, E>(elements: Iterable<A>, f: (a: A) => Effect<R, E, boolean>): Effect<R, E, A[]>
}
```
