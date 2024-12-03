# collectLeftover

Collects the leftovers from the stream when the sink succeeds and returns
them as part of the sink's result.

To import and use `collectLeftover` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.collectLeftover
```

**Signature**

```ts
export declare const collectLeftover: <A, In, L, E, R>(
  self: Sink<A, In, L, E, R>
) => Sink<[A, Chunk.Chunk<L>], In, never, E, R>
```
