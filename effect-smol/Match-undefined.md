Package: `effect`<br />
Module: `Match`<br />

## Match.undefined

Matches the value `undefined`.

**When to use**

Use when a matcher should handle only inputs with no defined value.

**Details**

This refinement is backed by `Predicate.isUndefined`, which checks
`input === undefined`.

**See**

- `defined` for matching non-nullish values
- `is` for matching literal values

**Signature**

```ts
declare const undefined: Predicate.Refinement<unknown, undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1487)

Since v4.0.0