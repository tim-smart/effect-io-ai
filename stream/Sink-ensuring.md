# ensuring

Returns a new sink with an attached finalizer. The finalizer is guaranteed
to be executed so long as the sink begins execution (and regardless of
whether or not it completes).

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const ensuring: {
  <R2, _>(finalizer: Effect.Effect<R2, never, _>): <R, E, In, L, Z>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R2 | R, E, In, L, Z>
  <R, E, In, L, Z, R2, _>(self: Sink<R, E, In, L, Z>, finalizer: Effect.Effect<R2, never, _>): Sink<R | R2, E, In, L, Z>
}
```
