Package: `effect`<br />
Module: `Stream`<br />

## Stream.toChannel

Creates a channel from a `Stream`.

**Signature**

```ts
declare const toChannel: <A, E, R>(stream: Stream<A, E, R>) => Channel.Channel<Chunk.Chunk<A>, unknown, E, unknown, unknown, unknown, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1921)

Since v2.0.0