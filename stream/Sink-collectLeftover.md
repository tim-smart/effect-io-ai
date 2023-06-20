# collectLeftover

Collects the leftovers from the stream when the sink succeeds and returns
them as part of the sink's result.

To import and use `collectLeftover` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.collectLeftover
```

**Signature**

```ts
export declare const collectLeftover: <R, E, In, L, Z>(
  self: Sink<R, E, In, L, Z>
) => Sink<R, E, In, never, readonly [Z, Chunk.Chunk<L>]>
```
