# collectLeftover

Collects the leftovers from the stream when the sink succeeds and returns
them as part of the sink's result.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const collectLeftover: <R, E, In, L, Z>(
  self: Sink<R, E, In, L, Z>
) => Sink<R, E, In, never, readonly [Z, Chunk.Chunk<L>]>
```
