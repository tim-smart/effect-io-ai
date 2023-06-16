# retryUntilEffect

Retries this effect until its error satisfies the specified effectful
predicate.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const retryUntilEffect: {
  <R1, E>(f: (e: E) => Effect<R1, never, boolean>): <R, A>(self: Effect<R, E, A>) => Effect<R1 | R, E, A>
  <R, E, A, R1>(self: Effect<R, E, A>, f: (e: E) => Effect<R1, never, boolean>): Effect<R | R1, E, A>
}
```
