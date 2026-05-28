Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.split

Splits a string into an array of strings by a separator.

**When to use**

Use when an encoded string is a delimited list (e.g. CSV values).

**Details**

- Splits by `separator` (default `,`).
- An empty string produces an empty array (not `[""]`).
- Pure, never fails.

**Example** (Split comma-separated string)

```ts
import { SchemaGetter } from "effect"

const splitComma = SchemaGetter.split<string>()
// "a,b,c" -> ["a", "b", "c"]
// "" -> []
```

**See**

- `splitKeyValue` when values are key-value pairs

**Signature**

```ts
declare const split: <E extends string>(options?: { readonly separator?: string | undefined; }) => Getter<ReadonlyArray<string>, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1221)

Since v4.0.0