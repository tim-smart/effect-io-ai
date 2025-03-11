## fromChannel

Creates a sink from a `Channel`.

**Signature**

```ts
declare const fromChannel: <L, In, E, A, R>(channel: Channel.Channel<Chunk.Chunk<L>, Chunk.Chunk<In>, E, never, A, unknown, R>) => Sink<A, In, L, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L972)

Since v2.0.0