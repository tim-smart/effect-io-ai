Package: `effect`<br />
Module: `Stream`<br />

## Stream.filterMap

Filters and maps stream elements in one pass using a `Filter`.

**When to use**

Use to keep only stream elements accepted by a `Filter` and emit each filter
success value.

**Details**

`Result.succeed` values are emitted and `Result.fail` values are skipped.

**See**

- `filter` for keeping original elements with a boolean predicate or refinement
- `filterMapEffect` for an effectful `Filter`
- `partition` for consuming both filter success and failure values

**Signature**

```ts
declare const filterMap: { <A, B, X>(filter: Filter.Filter<NoInfer<A>, B, X>): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>; <A, E, R, B, X>(self: Stream<A, E, R>, filter: Filter.Filter<A, B, X>): Stream<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4350)

Since v2.0.0