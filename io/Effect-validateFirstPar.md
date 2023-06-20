# validateFirstPar

Feeds elements of type `A` to `f` until it succeeds. Returns first success
or the accumulation of all errors.

To import and use `validateFirstPar` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.validateFirstPar
```

**Signature**

```ts
export declare const validateFirstPar: {
  <R, E, A, B>(f: (a: A) => Effect<R, E, B>): (elements: Iterable<A>) => Effect<R, E[], B>
  <R, E, A, B>(elements: Iterable<A>, f: (a: A) => Effect<R, E, B>): Effect<R, E[], B>
}
```
