# validateAllDiscard

Feeds elements of type `A` to `f` and accumulates all errors, discarding
the successes.

To import and use `validateAllDiscard` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.validateAllDiscard
```

**Signature**

```ts
export declare const validateAllDiscard: {
  <R, E, A, X>(f: (a: A) => Effect<R, E, X>): (elements: Iterable<A>) => Effect<R, E[], void>
  <R, E, A, X>(elements: Iterable<A>, f: (a: A) => Effect<R, E, X>): Effect<R, E[], void>
}
```
