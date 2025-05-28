Package: `effect`<br />
Module: `Stream`<br />

## Stream.toReadableStreamRuntime

Converts the stream to a `ReadableStream` using the provided runtime.

See https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.

**Signature**

```ts
declare const toReadableStreamRuntime: { <A, XR>(runtime: Runtime<XR>, options?: { readonly strategy?: QueuingStrategy<A> | undefined; }): <E, R extends XR>(self: Stream<A, E, R>) => ReadableStream<A>; <A, E, XR, R extends XR>(self: Stream<A, E, R>, runtime: Runtime<XR>, options?: { readonly strategy?: QueuingStrategy<A> | undefined; }): ReadableStream<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5346)

Since v2.0.0