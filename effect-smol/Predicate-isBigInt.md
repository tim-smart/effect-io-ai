Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isBigInt

Checks whether a value is a `bigint`.

When to use:
- You need to guard an `unknown` value as a bigint.

Behavior:
- Pure; does not mutate input.
- Uses `typeof input === "bigint"`.

**Example** (Guard bigint)

```ts
import { Predicate } from "effect"

const data: unknown = 1n

if (Predicate.isBigInt(data)) {
  console.log(data + 2n)
}
```

See also: `isNumber`

**Signature**

```ts
declare const isBigInt: (input: unknown) => input is bigint
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L639)

Since v2.0.0