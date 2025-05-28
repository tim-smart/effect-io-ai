Package: `effect`<br />
Module: `Stream`<br />

## Stream.filterMapWhile

Transforms all elements of the stream for as long as the specified partial
function is defined.

**Signature**

```ts
declare const filterMapWhile: { <A, A2>(pf: (a: A) => Option.Option<A2>): <E, R>(self: Stream<A, E, R>) => Stream<A2, E, R>; <A, E, R, A2>(self: Stream<A, E, R>, pf: (a: A) => Option.Option<A2>): Stream<A2, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1677)

Since v2.0.0