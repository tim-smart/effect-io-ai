# option

Executes this effect, skipping the error but returning optionally the
success.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.option`.

### Signature

```typescript
export declare const option: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, Option.Option<A>>
```
