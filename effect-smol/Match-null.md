Package: `effect`<br />
Module: `Match`<br />

## Match.null

Matches the value `null`.

**When to use**

Use to handle only the `null` literal in a match branch.

**Details**

This refinement is backed by `Predicate.isNull`, which checks
`input === null`.

**See**

- `defined` for matching non-nullish values
- `is` for matching literal values

**Signature**

```ts
declare const null: Predicate.Refinement<unknown, null>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1544)

Since v4.0.0