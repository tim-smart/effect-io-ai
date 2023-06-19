# collectAllWhile

Accumulates incoming elements into a chunk as long as they verify predicate
`p`.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const collectAllWhile: <In>(predicate: Predicate<In>) => Sink<never, never, In, In, Chunk.Chunk<In>>
```
