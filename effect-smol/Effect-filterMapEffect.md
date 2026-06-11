Package: `effect`<br />
Module: `Effect`<br />

## Effect.filterMapEffect

Filters and maps elements of an iterable effectfully with a `FilterEffect`.

**When to use**

Use when you need to filter each iterable element effectfully and transform
accepted elements into successful output values.

**Details**

`Result.succeed` values are collected in the returned array, and
`Result.fail` values are skipped.

**Gotchas**

With concurrent execution, successful values are collected in completion
order, not input order.

**See**

- `filterMap` for using a synchronous `Filter`
- `filter` for keeping original elements with a predicate

**Signature**

```ts
declare const filterMapEffect: { <A, B, X, E, R>(filter: Filter.FilterEffect<NoInfer<A>, B, X, E, R>, options?: { readonly concurrency?: Concurrency | undefined; }): (elements: Iterable<A>) => Effect<Array<B>, E, R>; <A, B, X, E, R>(elements: Iterable<A>, filter: Filter.FilterEffect<NoInfer<A>, B, X, E, R>, options?: { readonly concurrency?: Concurrency | undefined; }): Effect<Array<B>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4957)

Since v4.0.0