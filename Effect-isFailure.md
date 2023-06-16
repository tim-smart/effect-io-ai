# isFailure

Returns `true` if this effect is a failure, `false` otherwise.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.isFailure`.

### Signature

```typescript
export declare const isFailure: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, boolean>
```
