# forAll

Determines whether all elements of the `Collection<A>` satisfies the effectual
predicate `f`.

To import and use `forAll` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.forAll
```

**Signature**

```ts
export declare const forAll: {
  <R, E, A>(f: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, boolean>
  <R, E, A>(elements: Iterable<A>, f: (a: A) => Effect<R, E, boolean>): Effect<R, E, boolean>
}
```