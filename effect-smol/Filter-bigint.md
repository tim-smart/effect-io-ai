Package: `effect`<br />
Module: `Filter`<br />

## Filter.bigint

A predefined filter that only passes through `bigint` primitive values.

**When to use**

Use to keep primitive big integer values from unknown input while staying in
the composable `Filter` / `Result` pipeline.

**Details**

Implemented with `fromPredicate(Predicate.isBigInt)`, so values where
`typeof input === "bigint"` succeed and all other inputs fail with the
original input.

**Gotchas**

This filter does not coerce numbers or strings; `1n` passes while `1` fails.

**See**

- `number` for JavaScript `number` values
- `Predicate.isBigInt` for the underlying guard

**Signature**

```ts
declare const bigint: Filter<unknown, bigint, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L435)

Since v4.0.0