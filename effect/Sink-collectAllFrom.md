# collectAllFrom

Repeatedly runs the sink and accumulates its results into a `Chunk`.

To import and use `collectAllFrom` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.collectAllFrom
undefined

**Signature**

```ts
export declare const collectAllFrom: <A, In, L extends In, E, R>(
  self: Sink<A, In, L, E, R>
) => Sink<Chunk.Chunk<A>, In, L, E, R>
```
