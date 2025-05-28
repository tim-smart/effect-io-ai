Package: `effect`<br />
Module: `Stream`<br />

## Stream.flatten

Flattens this stream-of-streams into a stream made of the concatenation in
strict order of all the streams.

**Signature**

```ts
declare const flatten: { (options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; } | undefined): <A, E2, R2, E, R>(self: Stream<Stream<A, E2, R2>, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E2, R2, E, R>(self: Stream<Stream<A, E2, R2>, E, R>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly bufferSize?: number | undefined; } | undefined): Stream<A, E2 | E, R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1798)

Since v2.0.0