# once

Returns an effect that will be executed at most once, even if it is
evaluated multiple times.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const once: <R, E, A>(self: Effect<R, E, A>) => Effect<never, never, Effect<R, E, void>>
```
