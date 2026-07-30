Package: `effect`<br />
Module: `Match`<br />

## Match.is

Matches a specific set of literal values (e.g., `Match.is("a", 42, true)`).

**Signature**

```ts
declare const is: <Literals extends ReadonlyArray<string | number | bigint | boolean | null>>(...literals: Literals) => SafeRefinement<Literals[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L959)

Since v1.0.0