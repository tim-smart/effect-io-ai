# collectAllUntilEffect

Accumulates incoming elements into a chunk until effectful predicate `p` is
satisfied.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const collectAllUntilEffect: <In, R, E>(
  p: (input: In) => Effect.Effect<R, E, boolean>
) => Sink<R, E, In, In, Chunk.Chunk<In>>
```
