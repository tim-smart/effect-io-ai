Package: `effect`<br />
Module: `Formatter`<br />

## Formatter.formatJson

Safely stringifies a value to JSON, silently dropping circular references.

When to use:
- You need valid JSON output (unlike `format`).
- The input may contain circular references and you want them silently
  omitted rather than throwing a `TypeError`.

Behavior:
- Does not mutate input.
- Uses `JSON.stringify` internally with a replacer that tracks seen
  objects.
- Circular references are replaced with `undefined` (omitted from
  output).
- `Redactable` values are automatically redacted before serialization.
- Types not supported by JSON (`BigInt`, `Symbol`, `undefined`,
  functions) follow standard `JSON.stringify` behavior (omitted or
  `null` in arrays).

Options:
- `space` — indentation unit (number of spaces, or a string like
  `"\t"`). Defaults to `0` (compact).

**Example** (Compact JSON)

```ts
import { Formatter } from "effect"

console.log(Formatter.formatJson({ name: "Alice", age: 30 }))
// {"name":"Alice","age":30}
```

**Example** (Circular reference handling)

```ts
import { Formatter } from "effect"

const obj: any = { name: "test" }
obj.self = obj
console.log(Formatter.formatJson(obj))
// {"name":"test"}
```

**Example** (Pretty-printed JSON)

```ts
import { Formatter } from "effect"

console.log(Formatter.formatJson({ name: "Alice", age: 30 }, { space: 2 }))
// {
//   "name": "Alice",
//   "age": 30
// }
```

See also: `format`, `Formatter`

**Signature**

```ts
declare const formatJson: (input: unknown, options?: { readonly space?: number | string | undefined; }) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Formatter.ts#L414)

Since v4.0.0