Package: `effect`<br />
Module: `Stream`<br />

## Stream.filterMap

Performs a filter and map in a single step.

**Signature**

```ts
declare const filterMap: { <A, B>(pf: (a: A) => Option.Option<B>): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>; <A, E, R, B>(self: Stream<A, E, R>, pf: (a: A) => Option.Option<B>): Stream<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1649)

Since v2.0.0