# partitionPar

Feeds elements of type `A` to a function `f` that returns an effect.
Collects all successes and failures in parallel and returns the result as a
tuple.

To import and use `partitionPar` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.partitionPar
```

**Signature**

```ts
export declare const partitionPar: {
  <R, E, A, B>(f: (a: A) => Effect<R, E, B>): (elements: Iterable<A>) => Effect<R, never, [E[], B[]]>
  <R, E, A, B>(elements: Iterable<A>, f: (a: A) => Effect<R, E, B>): Effect<R, never, [E[], B[]]>
}
```
