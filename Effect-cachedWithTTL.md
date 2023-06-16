# cachedWithTTL

Returns an effect that, if evaluated, will return the cached result of this
effect. Cached results will expire after `timeToLive` duration.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const cachedWithTTL: {
  (timeToLive: Duration.Duration): <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, Effect<never, E, A>>
  <R, E, A>(self: Effect<R, E, A>, timeToLive: Duration.Duration): Effect<R, never, Effect<never, E, A>>
}
```
