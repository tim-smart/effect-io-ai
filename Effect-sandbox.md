# sandbox

Exposes the full `Cause` of failure for the specified effect.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.sandbox`.

### Signature

```typescript
export declare const sandbox: <R, E, A>(self: Effect<R, E, A>) => Effect<R, Cause.Cause<E>, A>
```
