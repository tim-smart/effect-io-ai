# cause

Returns an effect that succeeds with the cause of failure of this effect,
or `Cause.empty` if the effect did succeed.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.cause`.

### Signature

```typescript
export declare const cause: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, Cause.Cause<E>>
```
