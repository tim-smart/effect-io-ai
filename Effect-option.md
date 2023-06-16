# option

Executes this effect, skipping the error but returning optionally the
success.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const option: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, Option.Option<A>>
```
