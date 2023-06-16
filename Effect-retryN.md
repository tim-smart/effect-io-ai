# retryN

Retries this effect the specified number of times.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.retryN`.

### Signature

```typescript
export declare const retryN: {
  (n: number): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, n: number): Effect<R, E, A>
}
```
