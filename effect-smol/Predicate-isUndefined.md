Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isUndefined

Checks whether a value is `undefined`.

**When to use**

Use when you need a `Predicate` guard for values that are exactly
`undefined`.

**Details**

Uses `input === undefined`.

**Example** (Guard undefined)

```ts
import { Predicate } from "effect"

const data: unknown = undefined

console.log(Predicate.isUndefined(data))
```

**See**

- `isNotUndefined`
- `isNullish`

**Signature**

```ts
declare const isUndefined: (input: unknown) => input is undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L822)

Since v2.0.0