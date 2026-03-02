Package: `effect`<br />
Module: `Formatter`<br />

## Formatter.Formatter

A callable interface representing a function that converts a `Value` into a
`Format` (defaults to `string`).

When to use:
- You want to type a formatting / rendering function generically.
- You are building a pipeline that accepts pluggable formatters.

Behavior:
- Pure callable type; carries no runtime implementation.
- Contravariant in `Value`, covariant in `Format`.

**Example** (Define a custom formatter)

```ts
import type { Formatter } from "effect"

const upper: Formatter.Formatter<string> = (s) => s.toUpperCase()

console.log(upper("hello"))
// HELLO
```

See also: `format`, `formatJson`

**Signature**

```ts
export interface Formatter<in Value, out Format = string> {
  (value: Value): Format
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Formatter.ts#L86)

Since v4.0.0