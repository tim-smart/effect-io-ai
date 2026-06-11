Package: `effect`<br />
Module: `Filter`<br />

## Filter.fromPredicateOption

Creates a `Filter` from a function that returns an `Option`; `Some(value)`
passes with `value`, and `None` fails with the original input.

**Signature**

```ts
declare const fromPredicateOption: <A, B>(predicate: (a: A) => Option.Option<B>) => Filter<A, B>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L233)

Since v4.0.0