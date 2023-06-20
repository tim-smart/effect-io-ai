# filter

Filters the collection using the specified effectful predicate.

To import and use `filter` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.filter
```

**Signature**

```ts
export declare const filter: {
  <A, R, E>(f: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, A[]>
  <A, R, E>(elements: Iterable<A>, f: (a: A) => Effect<R, E, boolean>): Effect<R, E, A[]>
}
```
