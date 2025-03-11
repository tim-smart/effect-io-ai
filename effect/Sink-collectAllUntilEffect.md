## collectAllUntilEffect

Accumulates incoming elements into a chunk until effectful predicate `p` is
satisfied.

**Signature**

```ts
declare const collectAllUntilEffect: <In, E, R>(p: (input: In) => Effect.Effect<boolean, E, R>) => Sink<Chunk.Chunk<In>, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L208)

Since v2.0.0