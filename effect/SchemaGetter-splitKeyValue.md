Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.splitKeyValue

Parses a string into a record of key-value pairs.

**When to use**

Use when you need a schema getter to parse a present encoded string that
contains delimited key-value pairs (e.g. `"a=1,b=2"`).

**Details**

The getter is pure and never fails. It splits the string by `separator`
(default `,`) and then each pair by `keyValueSeparator` (default `=`). Pairs
missing a key or value are silently skipped.

**Example** (Parsing a key-value string)

```ts
import { SchemaGetter } from "effect"

const parse = SchemaGetter.splitKeyValue<string>()
// "a=1,b=2" -> { a: "1", b: "2" }
```

**See**

- `joinKeyValue` for the inverse operation
- `split` to split into an array of strings

**Signature**

```ts
declare const splitKeyValue: <E extends string>(options?: { readonly separator?: string | undefined; readonly keyValueSeparator?: string | undefined; }) => Getter<Record<string, string>, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaGetter.ts#L1078)

Since v4.0.0