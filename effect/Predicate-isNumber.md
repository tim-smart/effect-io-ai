Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNumber

Checks whether a value is a `number`.

**When to use**

Use when you need a `Predicate` guard to narrow an `unknown` value to a
number.

**Details**

Uses `typeof input === "number"` and does not exclude `NaN` or `Infinity`.

**Example** (Guarding numbers)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L572)

Since v2.0.0