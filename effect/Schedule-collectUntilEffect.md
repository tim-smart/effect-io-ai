Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.collectUntilEffect

Collects all inputs into a `Chunk` until an effectful condition fails.

**Details**

This function creates a schedule that continuously collects inputs into a
`Chunk` until the given effectful predicate `f` returns `false`. The
predicate runs as an effect, meaning it can involve asynchronous computations
like API calls, database lookups, or randomness.

**Signature**

```ts
declare const collectUntilEffect: <A, R>(f: (a: A) => Effect.Effect<boolean, never, R>) => Schedule<Chunk.Chunk<A>, A, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L474)

Since v2.0.0