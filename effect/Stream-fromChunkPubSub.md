Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromChunkPubSub

Creates a stream from a subscription to a `PubSub`.

**Options**

- `shutdown`: If `true`, the `PubSub` will be shutdown after the stream is evaluated (defaults to `false`)

**Signature**

```ts
declare const fromChunkPubSub: { <A>(pubsub: PubSub.PubSub<Chunk.Chunk<A>>, options: { readonly scoped: true; readonly shutdown?: boolean | undefined; }): Effect.Effect<Stream<A>, never, Scope.Scope>; <A>(pubsub: PubSub.PubSub<Chunk.Chunk<A>>, options?: { readonly scoped?: false | undefined; readonly shutdown?: boolean | undefined; } | undefined): Stream<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1954)

Since v2.0.0