## collectAllWhileEffect

Accumulates incoming elements into a chunk as long as they verify effectful
predicate `p`.

**Signature**

```ts
declare const collectAllWhileEffect: <In, E, R>(predicate: (input: In) => Effect.Effect<boolean, E, R>) => Sink<Chunk.Chunk<In>, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L231)

Since v2.0.0