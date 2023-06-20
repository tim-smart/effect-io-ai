# collectAllUntilEffect

Accumulates incoming elements into a chunk until effectful predicate `p` is
satisfied.

To import and use `collectAllUntilEffect` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.collectAllUntilEffect
```

**Signature**

```ts
export declare const collectAllUntilEffect: <In, R, E>(
  p: (input: In) => Effect.Effect<R, E, boolean>
) => Sink<R, E, In, In, Chunk.Chunk<In>>
```
