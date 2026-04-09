Package: `effect`<br />
Module: `Stream`<br />

## Stream.filterMap

Filters and maps stream elements in one pass using a `Filter`.

**Signature**

```ts
declare const filterMap: { <A, B, X>(filter: Filter.Filter<NoInfer<A>, B, X>): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>; <A, E, R, B, X>(self: Stream<A, E, R>, filter: Filter.Filter<A, B, X>): Stream<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4109)

Since v4.0.0