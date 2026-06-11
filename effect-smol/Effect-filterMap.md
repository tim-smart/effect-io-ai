Package: `effect`<br />
Module: `Effect`<br />

## Effect.filterMap

Filters and maps elements of an iterable with a `Filter`.

**When to use**

Use when you need to filter an iterable with a `Filter` inside an `Effect`,
collecting each filter success value.

**Details**

`Result.succeed` values are collected in the returned array, and
`Result.fail` values are skipped.

**See**

- `filter` for keeping original elements with a boolean predicate, refinement, or effectful predicate
- `filterMapEffect` for using an effectful `Filter`

**Signature**

```ts
declare const filterMap: { <A, B, X>(filter: Filter.Filter<NoInfer<A>, B, X>): (elements: Iterable<A>) => Effect<Array<B>>; <A, B, X>(elements: Iterable<A>, filter: Filter.Filter<NoInfer<A>, B, X>): Effect<Array<B>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4923)

Since v2.0.0