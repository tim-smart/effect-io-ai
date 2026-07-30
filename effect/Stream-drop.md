Package: `effect`<br />
Module: `Stream`<br />

## Stream.drop

Drops the specified number of elements from this stream.

**Signature**

```ts
declare const drop: { (n: number): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, n: number): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1366)

Since v2.0.0