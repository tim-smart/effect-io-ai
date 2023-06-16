# mapError

Returns an effect with its error channel mapped using the specified function.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.mapError`.

### Signature

```typescript
export declare const mapError: {
  <E, E2>(f: (e: E) => E2): <R, A>(self: Effect<R, E, A>) => Effect<R, E2, A>
  <R, A, E, E2>(self: Effect<R, E, A>, f: (e: E) => E2): Effect<R, E2, A>
}
```
