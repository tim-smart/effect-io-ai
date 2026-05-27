Package: `@effect/platform-node-shared`<br />
Module: `NodeSink`<br />

## NodeSink.fromWritable

Creates a `Sink` that writes chunks to a Node writable stream, respecting
backpressure, mapping writable errors with `onError`, and ending the stream
on completion unless `endOnDone` is `false`.

**Signature**

```ts
declare const fromWritable: <E, A = string | Uint8Array<ArrayBufferLike>>(options: { readonly evaluate: LazyArg<Writable | NodeJS.WritableStream>; readonly onError: (error: unknown) => E; readonly endOnDone?: boolean | undefined; readonly encoding?: BufferEncoding | undefined; }) => Sink.Sink<void, A, never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeSink.ts#L53)

Since v4.0.0