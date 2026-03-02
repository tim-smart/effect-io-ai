Package: `@effect/platform-bun`<br />
Module: `BunStream`<br />

## BunStream.fromReadableStream

An optimized version of `Stream.fromReadableStream` that uses the Bun
.readMany API to read multiple values at once from a `ReadableStream`.

**Signature**

```ts
declare const fromReadableStream: <A, E>(options: { readonly evaluate: LazyArg<ReadableStream<A>>; readonly onError: (error: unknown) => E; readonly releaseLockOnEnd?: boolean | undefined; }) => Stream.Stream<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunStream.ts#L24)

Since v1.0.0