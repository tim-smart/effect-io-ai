Package: `effect`<br />
Module: `Filter`<br />

## Filter.fromPredicateOption

Creates a Filter from a function that returns an Option.

**Signature**

```ts
declare const fromPredicateOption: <A, B>(predicate: (a: A) => Option.Option<B>) => Filter<A, B>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L204)

Since v4.0.0