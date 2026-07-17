Package: `effect`<br />
Module: `Formatter`<br />

## Formatter.Formatter

A callable interface representing a function that converts a `Value` into a `Format`, which defaults to `string`.

**When to use**

Use when you want to type a formatting or rendering function generically, or when you are building a pipeline that accepts pluggable formatters.

**Details**

This is a pure callable type and carries no runtime implementation. It is contravariant in `Value` and covariant in `Format`.

**Example** (Defining a custom formatter)

```ts
import type { Formatter } from "effect"

const upper: Formatter.Formatter<string> = (s) => s.toUpperCase()

console.log(upper("hello"))
// HELLO
```

**See**

- `format`
- `formatJson`

**Signature**

```ts
export interface Formatter<in Value, out Format = string> {
  (value: Value): Format
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Formatter.ts#L42)

Since v4.0.0