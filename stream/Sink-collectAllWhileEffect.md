# collectAllWhileEffect

Accumulates incoming elements into a chunk as long as they verify effectful
predicate `p`.

To import and use `collectAllWhileEffect` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.collectAllWhileEffect
```

**Signature**

```ts
export declare const collectAllWhileEffect: <In, R, E>(
  predicate: (input: In) => Effect.Effect<R, E, boolean>
) => Sink<R, E, In, In, Chunk.Chunk<In>>
```
