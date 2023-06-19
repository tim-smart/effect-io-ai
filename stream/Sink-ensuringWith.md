# ensuringWith

Returns a new sink with an attached finalizer. The finalizer is guaranteed
to be executed so long as the sink begins execution (and regardless of
whether or not it completes).

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const ensuringWith: {
  <E, Z, R2, _>(finalizer: (exit: Exit.Exit<E, Z>) => Effect.Effect<R2, never, _>): <R, In, L>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R2 | R, E, In, L, Z>
  <R, In, L, E, Z, R2, _>(
    self: Sink<R, E, In, L, Z>,
    finalizer: (exit: Exit.Exit<E, Z>) => Effect.Effect<R2, never, _>
  ): Sink<R | R2, E, In, L, Z>
}
```
