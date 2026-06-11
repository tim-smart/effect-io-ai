Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNull

Checks whether a value is `null`.

**When to use**

Use when you need a `Predicate` guard for nullable values.

**Details**

Uses `input === null`.

**Example** (Guard null)

```ts
import { Predicate } from "effect"

const data: unknown = null

console.log(Predicate.isNull(data))
```

**See**

- `isNotNull`
- `isNullish`

**Signature**

```ts
declare const isNull: (input: unknown) => input is null
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L829)

Since v2.0.0