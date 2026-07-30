Package: `effect`<br />
Module: `Stream`<br />

## Stream.dropRight

Drops the last specified number of elements from this stream.

**Signature**

```ts
declare const dropRight: { (n: number): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, n: number): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1379)

Since v2.0.0