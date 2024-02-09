# collectAllUntilEffect

Accumulates incoming elements into a chunk until effectful predicate `p` is
satisfied.

To import and use `collectAllUntilEffect` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.collectAllUntilEffect
```

**Signature**

```ts
export declare const collectAllUntilEffect: <In, E, R>(
  p: (input: In) => Effect.Effect<boolean, E, R>
) => Sink<Chunk.Chunk<In>, In, In, E, R>
```
