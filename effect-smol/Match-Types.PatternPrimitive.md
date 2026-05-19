Package: `effect`<br />
Module: `Match`<br />

## Match.Types.PatternPrimitive

Defines primitive patterns that can match simple values.

This type represents the building blocks of pattern matching: predicates,
literal values, and safe refinements. These are the atomic patterns that
can be composed into more complex matching logic.

**Signature**

```ts
type PatternPrimitive<A> = PredicateA<A> | A | SafeRefinement<any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L2070)

Since v4.0.0