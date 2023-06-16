# cachedInvalidateWithTTL

Returns an effect that, if evaluated, will return the cached result of this
effect. Cached results will expire after `timeToLive` duration. In
addition, returns an effect that can be used to invalidate the current
cached value before the `timeToLive` duration expires.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.cachedInvalidateWithTTL`.

### Signature

```typescript
export declare const cachedInvalidateWithTTL: {
  (timeToLive: Duration.Duration): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R, never, [Effect<never, E, A>, Effect<never, never, void>]>
  <R, E, A>(self: Effect<R, E, A>, timeToLive: Duration.Duration): Effect<
    R,
    never,
    [Effect<never, E, A>, Effect<never, never, void>]
  >
}
```
