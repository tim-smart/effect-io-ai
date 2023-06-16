# cached

Returns an effect that, if evaluated, will return the lazily computed
result of this effect.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const cached: <R, E, A>(self: Effect<R, E, A>) => Effect<never, never, Effect<R, E, A>>
```
