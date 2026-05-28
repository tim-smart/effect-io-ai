Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isBigInt

Checks whether a value is a `bigint`.

**When to use**

Use when you need to guard an `unknown` value as a bigint.

**Details**

- Uses `typeof input === "bigint"`.

**Example** (Guard bigint)

```ts
import { Predicate } from "effect"

const data: unknown = 1n

if (Predicate.isBigInt(data)) {
  console.log(data + 2n)
}
```

**See**

- `isNumber`

**Signature**

```ts
declare const isBigInt: (input: unknown) => input is bigint
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L690)

Since v2.0.0