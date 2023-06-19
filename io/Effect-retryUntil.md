# retryUntil

Retries this effect until its error satisfies the specified predicate.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const retryUntil: {
  <E>(f: Predicate<E>): <R, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, f: Predicate<E>): Effect<R, E, A>
}
```
