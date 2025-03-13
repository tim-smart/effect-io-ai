Package: `effect`<br />
Module: `Sink`<br />

## Sink.collectAllWhile

Accumulates incoming elements into a chunk as long as they verify predicate
`p`.

**Signature**

```ts
declare const collectAllWhile: { <In, Out extends In>(refinement: Refinement<In, Out>): Sink<Chunk.Chunk<Out>, In, In>; <In>(predicate: Predicate<In>): Sink<Chunk.Chunk<In>, In, In>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L219)

Since v2.0.0