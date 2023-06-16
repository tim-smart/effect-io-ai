# option

Executes this effect, skipping the error but returning optionally the
success.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const option: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, Option.Option<A>>
```
