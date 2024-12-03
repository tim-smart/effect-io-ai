# collectAllN

A sink that collects first `n` elements into a chunk.

To import and use `collectAllN` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.collectAllN
```

**Signature**

```ts
export declare const collectAllN: <In>(n: number) => Sink<Chunk.Chunk<In>, In, In>
```
