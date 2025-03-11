## collectAllUntil

Accumulates incoming elements into a chunk until predicate `p` is
satisfied.

**Signature**

```ts
declare const collectAllUntil: <In>(p: Predicate<In>) => Sink<Chunk.Chunk<In>, In, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L199)

Since v2.0.0