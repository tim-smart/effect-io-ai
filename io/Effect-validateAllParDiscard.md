# validateAllParDiscard

Feeds elements of type `A` to `f` in parallel and accumulates all errors,
discarding the successes.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const validateAllParDiscard: {
  <R, E, A, B>(f: (a: A) => Effect<R, E, B>): (elements: Iterable<A>) => Effect<R, E[], void>
  <R, E, A, B>(elements: Iterable<A>, f: (a: A) => Effect<R, E, B>): Effect<R, E[], void>
}
```
