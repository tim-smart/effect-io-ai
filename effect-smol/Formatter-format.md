Package: `effect`<br />
Module: `Formatter`<br />

## Formatter.format

Converts any JavaScript value into a human-readable string.

When to use:
- Pretty-printing values for debugging, logging, or error messages.
- You need to handle `BigInt`, `Symbol`, `Set`, `Map`, `Date`, `RegExp`,
  or class instances that `JSON.stringify` cannot represent.
- You want circular references shown as `"[Circular]"` instead of
  throwing.

Behavior:
- Does not mutate input.
- Output is **not** valid JSON; use `formatJson` when you need
  parseable JSON.
- Primitives: stringified naturally (`null`, `undefined`, `123`, `true`).
  Strings are JSON-quoted.
- Objects with a custom `toString` (not `Object.prototype.toString`):
  `toString()` is called unless `ignoreToString` is `true`.
- Errors with a `cause`: formatted as `"<message> (cause: <cause>)"`.
- Iterables (`Set`, `Map`, etc.): formatted as
  `ClassName([...elements])`.
- Class instances: wrapped as `ClassName({...})`.
- `Redactable` values are automatically redacted.
- Arrays/objects with 0–1 entries are inline; larger ones are
  pretty-printed when `space` is set.
- Circular references are replaced with `"[Circular]"`.

Options:
- `space` — indentation unit (number of spaces, or a string like
  `"\t"`). Defaults to `0` (compact).
- `ignoreToString` — skip calling `toString()`. Defaults to `false`.

**Example** (Compact output)

```ts
import { Formatter } from "effect"

console.log(Formatter.format({ a: 1, b: [2, 3] }))
// {"a":1,"b":[2,3]}
```

**Example** (Pretty-printed output)

```ts
import { Formatter } from "effect"

console.log(Formatter.format({ a: 1, b: [2, 3] }, { space: 2 }))
// {
//   "a": 1,
//   "b": [
//     2,
//     3
//   ]
// }
```

**Example** (Circular reference handling)

```ts
import { Formatter } from "effect"

const obj: any = { name: "loop" }
obj.self = obj
console.log(Formatter.format(obj))
// {"name":"loop","self":[Circular]}
```

See also: `formatJson`, `Formatter`

**Signature**

```ts
declare const format: (input: unknown, options?: { readonly space?: number | string | undefined; readonly ignoreToString?: boolean | undefined; }) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Formatter.ts#L161)

Since v4.0.0