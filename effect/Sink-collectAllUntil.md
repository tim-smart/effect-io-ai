# collectAllUntil

Accumulates incoming elements into a chunk until predicate `p` is
satisfied.

To import and use `collectAllUntil` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.collectAllUntil
```

**Signature**

```ts
export declare const collectAllUntil: <In>(p: Predicate<In>) => Sink<never, never, In, In, Chunk.Chunk<In>>
```
