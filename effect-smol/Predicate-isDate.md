Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isDate

Checks whether a value is a `Date`.

**When to use**

Use when you need to guard dates at runtime.

**Details**

- Uses `instanceof Date`.

**Example** (Guard Date)

```ts
import { Predicate } from "effect"

const data: unknown = new Date()

console.log(Predicate.isDate(data))
```

**See**

- `isRegExp`

**Signature**

```ts
declare const isDate: (input: unknown) => input is Date
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1310)

Since v2.0.0