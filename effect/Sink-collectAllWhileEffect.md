# collectAllWhileEffect

Accumulates incoming elements into a chunk as long as they verify effectful
predicate `p`.

To import and use `collectAllWhileEffect` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.collectAllWhileEffect
undefined

**Signature**

```ts
export declare const collectAllWhileEffect: <In, E, R>(
  predicate: (input: In) => Effect.Effect<boolean, E, R>
) => Sink<Chunk.Chunk<In>, In, In, E, R>
```
