## sleeps

Accesses a `TestClock` instance in the context and returns a list of
times that effects are scheduled to run.

**Signature**

```ts
declare const sleeps: () => Effect.Effect<Chunk.Chunk<number>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestClock.ts#L522)

Since v2.0.0