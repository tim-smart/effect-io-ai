Package: `@effect/platform-node-shared`<br />
Module: `NodeSink`<br />

## NodeSink.fromWritableChannel

Creates a `Channel` that pulls chunks from upstream and writes them to a
Node writable stream, respecting backpressure and optionally ending the
writable when upstream is done.

**Signature**

```ts
declare const fromWritableChannel: <IE, E, A = string | Uint8Array<ArrayBufferLike>>(options: { readonly evaluate: LazyArg<Writable | NodeJS.WritableStream>; readonly onError: (error: unknown) => E; readonly endOnDone?: boolean | undefined; readonly encoding?: BufferEncoding | undefined; }) => Channel.Channel<never, IE | E, void, NonEmptyReadonlyArray<A>, IE>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeSink.ts#L71)

Since v4.0.0