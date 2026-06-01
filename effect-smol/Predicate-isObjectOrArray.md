Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isObjectOrArray

Checks whether a value is an object or an array (non-null object).

**When to use**

Use when you need a `Predicate` guard that accepts plain objects and arrays,
but not `null`.

**Details**

Uses `typeof input === "object" && input !== null` and includes arrays.

**Example** (Object or array)

```ts
import { Predicate } from "effect"

console.log(Predicate.isObjectOrArray([]))
```

**See**

- `isObject`
- `isObjectKeyword`

**Signature**

```ts
declare const isObjectOrArray: (input: unknown) => input is { [x: PropertyKey]: unknown; } | Array<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1056)

Since v4.0.0