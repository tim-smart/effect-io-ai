# collectAllWhileEffect

Accumulates incoming elements into a chunk as long as they verify effectful
predicate `p`.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const collectAllWhileEffect: <In, R, E>(
  predicate: (input: In) => Effect.Effect<R, E, boolean>
) => Sink<R, E, In, In, Chunk.Chunk<In>>
```
