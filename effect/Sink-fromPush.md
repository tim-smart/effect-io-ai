## fromPush

Creates a sink from a chunk processing function.

**Signature**

```ts
declare const fromPush: <In, L0, R0, L, R>(push: Effect.Effect<(_: Option.Option<Chunk.Chunk<In>>) => Effect.Effect<void, readonly [Either.Either<R0, L0>, Chunk.Chunk<L>], R>, never, R>) => Sink<R0, In, L, L0, Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1017)

Since v2.0.0