Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromPull

Creates a stream from an effect that pulls elements from another stream.

See `Stream.toPull` for reference.

**Signature**

```ts
declare const fromPull: <R, R2, E, A>(effect: Effect.Effect<Effect.Effect<Chunk.Chunk<A>, Option.Option<E>, R2>, never, Scope.Scope | R>) => Stream<A, E, R2 | Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2132)

Since v2.0.0