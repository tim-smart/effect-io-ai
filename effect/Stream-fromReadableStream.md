## fromReadableStream

Creates a stream from a `ReadableStream`.

See https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.

**Signature**

```ts
declare const fromReadableStream: { <A, E>(options: { readonly evaluate: LazyArg<ReadableStream<A>>; readonly onError: (error: unknown) => E; readonly releaseLockOnEnd?: boolean | undefined; }): Stream<A, E>; <A, E>(evaluate: LazyArg<ReadableStream<A>>, onError: (error: unknown) => E): Stream<A, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2171)

Since v2.0.0