Package: `effect`<br />
Module: `Stream`<br />

## Stream.toAsyncIterableRuntime

Converts the stream to a `AsyncIterable` using the provided runtime.

**Signature**

```ts
declare const toAsyncIterableRuntime: { <A, XR>(runtime: Runtime<XR>): <E, R extends XR>(self: Stream<A, E, R>) => AsyncIterable<A>; <A, E, XR, R extends XR>(self: Stream<A, E, R>, runtime: Runtime<XR>): AsyncIterable<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5376)

Since v3.15.0