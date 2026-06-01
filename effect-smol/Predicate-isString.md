Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isString

Checks whether a value is a `string`.

**When to use**

Use when you need a `Predicate` guard to narrow an `unknown` value to a
string.

**Details**

Uses `typeof input === "string"`.

**Example** (Guard string)

```ts
import { Predicate } from "effect"

const data: unknown = "hi"

if (Predicate.isString(data)) {
  console.log(data.toUpperCase())
}
```

**See**

- `isNumber`
- `isBoolean`
- `Refinement`

**Signature**

```ts
declare const isString: (input: unknown) => input is string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L594)

Since v2.0.0