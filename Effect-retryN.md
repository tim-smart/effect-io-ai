# retryN

Retries this effect the specified number of times.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const retryN: {
  (n: number): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, n: number): Effect<R, E, A>
}
```
