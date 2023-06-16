# retryWhileEquals

Retries this effect for as long as its error is equal to the specified
error.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const retryWhileEquals: {
  <E>(e: E): <R, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, e: E): Effect<R, E, A>
}
```
