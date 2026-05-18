Package: `effect`<br />
Module: `Stream`<br />

## Stream.takeWhileFilter

Takes the longest initial prefix accepted by a `Filter` and emits the
filter's success values.

The stream stops at the first `Result.fail` returned by the filter.

**Signature**

```ts
declare const takeWhileFilter: { <A, B, X>(f: Filter.Filter<NoInfer<A>, B, X>): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>; <A, E, R, B, X>(self: Stream<A, E, R>, f: Filter.Filter<NoInfer<A>, B, X>): Stream<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6414)

Since v4.0.0