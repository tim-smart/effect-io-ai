# collectAllWhile

Accumulates incoming elements into a chunk as long as they verify predicate
`p`.

To import and use `collectAllWhile` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.collectAllWhile
```

**Signature**

```ts
export declare const collectAllWhile: <In>(predicate: Predicate<In>) => Sink<never, never, In, In, Chunk.Chunk<In>>
```
