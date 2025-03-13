Package: `effect`<br />
Module: `Sink`<br />

## Sink.toChannel

Creates a `Channel` from a Sink.

**Signature**

```ts
declare const toChannel: <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Channel.Channel<Chunk.Chunk<L>, Chunk.Chunk<In>, E, never, A, unknown, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L982)

Since v2.0.0