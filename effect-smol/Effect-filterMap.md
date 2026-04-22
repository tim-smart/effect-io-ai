Package: `effect`<br />
Module: `Effect`<br />

## Effect.filterMap

Filters and maps elements of an iterable with a `Filter`.

**Signature**

```ts
declare const filterMap: { <A, B, X>(filter: Filter.Filter<NoInfer<A>, B, X>): (elements: Iterable<A>) => Effect<Array<B>>; <A, B, X>(elements: Iterable<A>, filter: Filter.Filter<NoInfer<A>, B, X>): Effect<Array<B>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4840)

Since v4.0.0