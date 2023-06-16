# clockWith

Retreives the `Clock` service from the context and provides it to the
specified effectful function.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const clockWith: <R, E, A>(f: (clock: Clock.Clock) => Effect<R, E, A>) => Effect<R, E, A>
```
