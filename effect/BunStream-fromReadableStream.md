Package: `@effect/platform-bun`<br />
Module: `BunStream`<br />

## BunStream.fromReadableStream

Creates a stream from a `ReadableStream` using Bun's optimized `.readMany`
API.

**Signature**

```ts
declare const fromReadableStream: <A, E>(options: { readonly evaluate: LazyArg<ReadableStream<A>>; readonly onError: (error: unknown) => E; readonly releaseLockOnEnd?: boolean | undefined; }) => Stream.Stream<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunStream.ts#L33)

Since v4.0.0