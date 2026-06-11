Package: `@effect/platform-node-shared`<br />
Module: `NodeStream`<br />

## NodeStream.fromReadableChannel

Creates a `Channel` that pulls chunks from a Node readable stream, mapping
errors with `onError` and destroying the readable on completion unless
`closeOnDone` is `false`.

**Signature**

```ts
declare const fromReadableChannel: <A = Uint8Array<ArrayBufferLike>, E = Cause.UnknownError>(options: { readonly evaluate: LazyArg<Readable | NodeJS.ReadableStream>; readonly onError?: (error: unknown) => E; readonly chunkSize?: number | undefined; readonly closeOnDone?: boolean | undefined; }) => Channel.Channel<Arr.NonEmptyReadonlyArray<A>, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeStream.ts#L54)

Since v4.0.0