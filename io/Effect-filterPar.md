# filterPar

Filters the collection in parallel using the specified effectual predicate.
See `filter` for a sequential version of it.

To import and use `filterPar` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.filterPar
```

**Signature**

```ts
export declare const filterPar: {
  <A, R, E>(f: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, A[]>
  <A, R, E>(elements: Iterable<A>, f: (a: A) => Effect<R, E, boolean>): Effect<R, E, A[]>
}
```
