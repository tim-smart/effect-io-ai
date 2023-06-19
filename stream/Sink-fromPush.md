# fromPush

Creates a sink from a chunk processing function.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const fromPush: <R, E, In, L, Z>(
  push: Effect.Effect<
    Scope.Scope | R,
    never,
    (_: Option.Option<Chunk.Chunk<In>>) => Effect.Effect<R, readonly [Either.Either<E, Z>, Chunk.Chunk<L>], void>
  >
) => Sink<R, E, In, L, Z>
```
