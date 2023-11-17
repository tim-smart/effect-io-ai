# collectAllFrom

Repeatedly runs the sink and accumulates its results into a `Chunk`.

To import and use `collectAllFrom` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.collectAllFrom
```

**Signature**

```ts
export declare const collectAllFrom: <R, E, In, L extends In, Z>(
  self: Sink<R, E, In, L, Z>
) => Sink<R, E, In, L, Chunk.Chunk<Z>>
```
