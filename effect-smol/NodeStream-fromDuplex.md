Package: `@effect/platform-node-shared`<br />
Module: `NodeStream`<br />

## NodeStream.fromDuplex

Creates a `Channel` over a Node `Duplex`, writing upstream chunks with
backpressure while emitting chunks read from the duplex and optionally ending
the writable side when upstream completes.

**Signature**

```ts
declare const fromDuplex: <IE, I = Uint8Array<ArrayBufferLike>, O = Uint8Array<ArrayBufferLike>, E = Cause.UnknownError>(options: { readonly evaluate: LazyArg<Duplex>; readonly onError?: (error: unknown) => E; readonly chunkSize?: number | undefined; readonly bufferSize?: number | undefined; readonly endOnDone?: boolean | undefined; readonly encoding?: BufferEncoding | undefined; }) => Channel.Channel<Arr.NonEmptyReadonlyArray<O>, IE | E, void, Arr.NonEmptyReadonlyArray<I>, IE>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeStream.ts#L78)

Since v4.0.0