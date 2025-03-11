## collectLeftover

Collects the leftovers from the stream when the sink succeeds and returns
them as part of the sink's result.

**Signature**

```ts
declare const collectLeftover: <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<[A, Chunk.Chunk<L>], In, never, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L259)

Since v2.0.0