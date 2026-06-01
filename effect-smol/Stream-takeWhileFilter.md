Package: `effect`<br />
Module: `Stream`<br />

## Stream.takeWhileFilter

Takes the longest initial prefix accepted by a `Filter` and emits the
filter's success values.

**When to use**

Use to keep the leading stream elements that a `Filter` accepts, emit the
filter's success values, and stop at the first filter failure.

**Details**

The stream stops at the first `Result.fail` returned by the filter.

**See**

- `takeWhile` for keeping original elements with a boolean predicate or refinement
- `filterMap` for filtering across the whole stream instead of only the leading prefix
- `dropWhileFilter` for dropping the accepted prefix and keeping the remaining original elements

**Signature**

```ts
declare const takeWhileFilter: { <A, B, X>(f: Filter.Filter<NoInfer<A>, B, X>): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>; <A, E, R, B, X>(self: Stream<A, E, R>, f: Filter.Filter<NoInfer<A>, B, X>): Stream<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6660)

Since v4.0.0