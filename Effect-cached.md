# cached

Returns an effect that, if evaluated, will return the lazily computed
result of this effect.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.cached`.

### Signature

```typescript
export declare const cached: <R, E, A>(self: Effect<R, E, A>) => Effect<never, never, Effect<R, E, A>>
```
