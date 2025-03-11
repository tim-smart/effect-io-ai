## fromPubSub

Creates a stream from a subscription to a `PubSub`.

**Options**

- `shutdown`: If `true`, the `PubSub` will be shutdown after the stream is evaluated (defaults to `false`)

**Signature**

```ts
declare const fromPubSub: { <A>(pubsub: PubSub.PubSub<A>, options: { readonly scoped: true; readonly maxChunkSize?: number | undefined; readonly shutdown?: boolean | undefined; }): Effect.Effect<Stream<A>, never, Scope.Scope>; <A>(pubsub: PubSub.PubSub<A>, options?: { readonly scoped?: false | undefined; readonly maxChunkSize?: number | undefined; readonly shutdown?: boolean | undefined; } | undefined): Stream<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2040)

Since v2.0.0