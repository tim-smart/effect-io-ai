# validateAllPar

Feeds elements of type `A` to `f `and accumulates, in parallel, all errors
in error channel or successes in success channel.

This combinator is lossy meaning that if there are errors all successes
will be lost. To retain all information please use [[partitionPar]].

To import and use `validateAllPar` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.validateAllPar
```

**Signature**

```ts
export declare const validateAllPar: {
  <R, E, A, B>(f: (a: A) => Effect<R, E, B>): (elements: Iterable<A>) => Effect<R, E[], B[]>
  <R, E, A, B>(elements: Iterable<A>, f: (a: A) => Effect<R, E, B>): Effect<R, E[], B[]>
}
```