Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNumber

Checks whether a value is a `number`.

**When to use**

Use when you need to guard an `unknown` value as a number.

**Details**

- Uses `typeof input === "number"`.
- Does not exclude `NaN` or `Infinity`.

**Example** (Guard number)

```ts
import { Predicate } from "effect"

const data: unknown = 42

if (Predicate.isNumber(data)) {
  console.log(data + 1)
}
```

**See**

- `isBigInt`
- `isString`

**Signature**

```ts
declare const isNumber: (input: unknown) => input is number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L627)

Since v2.0.0