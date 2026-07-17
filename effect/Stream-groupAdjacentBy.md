Package: `effect`<br />
Module: `Stream`<br />

## Stream.groupAdjacentBy

Groups consecutive elements that have equal keys into non-empty arrays.

**When to use**

Use when you already have a stream ordered by the grouping key and want to
emit each consecutive run as a non-empty array while keeping later
non-adjacent runs separate.

**Details**

The key is computed with `f`; adjacent elements whose keys are equal by
`Equal.equals` are emitted as one `[key, group]`. Later non-adjacent runs
with the same key are emitted separately.

**See**

- `groupByKey` for grouping all elements with the same key across the stream
- `groupBy` for custom grouped stream construction

**Signature**

```ts
declare const groupAdjacentBy: { <A, K>(f: (a: NoInfer<A>) => K): <E, R>(self: Stream<A, E, R>) => Stream<readonly [K, Arr.NonEmptyArray<A>], E, R>; <A, E, R, K>(self: Stream<A, E, R>, f: (a: NoInfer<A>) => K): Stream<readonly [K, Arr.NonEmptyArray<A>], E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L8455)

Since v2.0.0