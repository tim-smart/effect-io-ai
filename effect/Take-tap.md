## tap

Returns an effect that effectfully "peeks" at the success of this take.

**Signature**

```ts
declare const tap: { <A, X, E2, R>(f: (chunk: Chunk.Chunk<A>) => Effect.Effect<X, E2, R>): <E>(self: Take<A, E>) => Effect.Effect<void, E2 | E, R>; <A, E, X, E2, R>(self: Take<A, E>, f: (chunk: Chunk.Chunk<A>) => Effect.Effect<X, E2, R>): Effect.Effect<void, E | E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Take.ts#L250)

Since v2.0.0