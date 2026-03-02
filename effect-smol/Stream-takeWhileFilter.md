Package: `effect`<br />
Module: `Stream`<br />

## Stream.takeWhileFilter

Takes the longest initial prefix of elements that satisfy the filter.

**Signature**

```ts
declare const takeWhileFilter: { <A, B, X>(f: Filter.Filter<NoInfer<A>, B, X>): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>; <A, E, R, B, X>(self: Stream<A, E, R>, f: Filter.Filter<NoInfer<A>, B, X>): Stream<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6031)

Since v4.0.0