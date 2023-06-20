# dropUntil

Drops all elements until the effectful predicate returns true.

To import and use `dropUntil` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.dropUntil
```

**Signature**

```ts
export declare const dropUntil: {
  <A, R, E>(predicate: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, A[]>
  <A, R, E>(elements: Iterable<A>, predicate: (a: A) => Effect<R, E, boolean>): Effect<R, E, A[]>
}
```
