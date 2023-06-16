# retryUntilEquals

Retries this effect until its error is equal to the specified error.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const retryUntilEquals: {
  <E>(e: E): <R, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, e: E): Effect<R, E, A>
}
```
