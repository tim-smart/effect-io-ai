# collectAllUntil

Accumulates incoming elements into a chunk until predicate `p` is
satisfied.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const collectAllUntil: <In>(p: Predicate<In>) => Sink<never, never, In, In, Chunk.Chunk<In>>
```
