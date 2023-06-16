# once

Returns an effect that will be executed at most once, even if it is
evaluated multiple times.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.once`.

### Signature

```typescript
export declare const once: <R, E, A>(self: Effect<R, E, A>) => Effect<never, never, Effect<R, E, void>>
```
