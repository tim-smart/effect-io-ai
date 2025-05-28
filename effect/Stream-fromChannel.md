Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromChannel

Creates a stream from a `Channel`.

**Signature**

```ts
declare const fromChannel: <A, E, R>(channel: Channel.Channel<Chunk.Chunk<A>, unknown, E, unknown, unknown, unknown, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1912)

Since v2.0.0