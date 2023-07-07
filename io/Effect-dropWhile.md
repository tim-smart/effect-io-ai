# dropWhile

Drops all elements so long as the predicate returns true.

To import and use `dropWhile` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.dropWhile
```

**Signature**

```ts
export declare const dropWhile: {
  <R, E, A>(f: (a: A, i: number) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, A[]>
  <R, E, A>(elements: Iterable<A>, f: (a: A, i: number) => Effect<R, E, boolean>): Effect<R, E, A[]>
}
```
