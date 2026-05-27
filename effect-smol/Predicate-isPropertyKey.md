Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isPropertyKey

Checks whether a value is a valid `PropertyKey` (string, number, or symbol).

**When to use**

Use when you need to guard unknown keys before indexing.

**Details**

- Pure; does not mutate input.
- Uses `isString`, `isNumber`, and `isSymbol`.

**Example** (Guard property key)

```ts
import { Predicate } from "effect"

const key: unknown = "name"
const obj: Record<PropertyKey, unknown> = { name: "Ada" }

if (Predicate.isPropertyKey(key) && key in obj) {
  console.log(obj[key])
}
```

**See**

- `isString`
- `isNumber`
- `isSymbol`

**Signature**

```ts
declare const isPropertyKey: (u: unknown) => u is PropertyKey
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L769)

Since v4.0.0