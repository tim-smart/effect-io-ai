# validateAllParDiscard

Feeds elements of type `A` to `f` in parallel and accumulates all errors,
discarding the successes.

To import and use `validateAllParDiscard` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.validateAllParDiscard
```

**Signature**

```ts
export declare const validateAllParDiscard: {
  <R, E, A, B>(f: (a: A) => Effect<R, E, B>): (elements: Iterable<A>) => Effect<R, E[], void>
  <R, E, A, B>(elements: Iterable<A>, f: (a: A) => Effect<R, E, B>): Effect<R, E[], void>
}
```
