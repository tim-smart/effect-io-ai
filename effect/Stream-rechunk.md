Package: `effect`<br />
Module: `Stream`<br />

## Stream.rechunk

Re-chunks the elements of the stream into chunks of `n` elements each. The
last chunk might contain less than `n` elements.

**Signature**

```ts
declare const rechunk: { (n: number): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, n: number): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3822)

Since v2.0.0