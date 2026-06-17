Package: `effect`<br />
Module: `Formatter`<br />

## Formatter.formatJson

Stringifies a value to JSON safely, silently dropping circular references.

**When to use**

Use when you need valid JSON output, unlike `format`, and the input may
contain circular references that should be silently omitted rather than
throwing a `TypeError`.

**Details**

Uses `JSON.stringify` internally with a replacer that tracks the current
object ancestry. Circular references are replaced with `undefined`, which
omits them from object output. `Redactable` values are automatically redacted
before serialization. Values not supported by JSON, such as `BigInt`,
`Symbol`, `undefined`, and functions, follow standard `JSON.stringify`
behavior. The `space` parameter controls indentation and defaults to `0`.

**Example** (Formatting compact JSON)

```ts
import { Formatter } from "effect"

console.log(Formatter.formatJson({ name: "Alice", age: 30 }))
// {"name":"Alice","age":30}
```

**Example** (Handling circular references)

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

**See**

- `format`
- `Formatter`

**Signature**

```ts
declare const formatJson: (input: unknown, options?: { readonly space?: number | string | undefined; }) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Formatter.ts#L297)

Since v4.0.0