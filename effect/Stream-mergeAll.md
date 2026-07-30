Package: `effect`<br />
Module: `Stream`<br />

## Stream.mergeAll

Merges a variable list of streams in a non-deterministic fashion. Up to `n`
streams may be consumed in parallel and up to `outputBuffer` chunks may be
buffered by this operator.

**Signature**

```ts
declare const mergeAll: { (options: { readonly concurrency: number | "unbounded"; readonly bufferSize?: number | undefined; }): <A, E, R>(streams: Iterable<Stream<A, E, R>>) => Stream<A, E, R>; <A, E, R>(streams: Iterable<Stream<A, E, R>>, options: { readonly concurrency: number | "unbounded"; readonly bufferSize?: number | undefined; }): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2993)

Since v2.0.0