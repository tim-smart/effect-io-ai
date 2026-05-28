Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isBoolean

Checks whether a value is a `boolean`.

**When to use**

Use when you need to guard an `unknown` value as a boolean.

**Details**

- Uses `typeof input === "boolean"`.

**Example** (Guard boolean)

```ts
import { Predicate } from "effect"

const data: unknown = true

if (Predicate.isBoolean(data)) {
  console.log(data ? "yes" : "no")
}
```

**See**

- `isString`
- `isNumber`

**Signature**

```ts
declare const isBoolean: (input: unknown) => input is boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L659)

Since v2.0.0