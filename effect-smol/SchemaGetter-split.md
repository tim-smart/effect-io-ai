Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.split

Splits a string into an array of strings by a separator.

**When to use**

Use when you need a schema getter to split a present encoded string
containing a delimited list, such as CSV values.

**Details**

The getter is pure and never fails. It splits by `separator` (default `,`).
An empty string produces an empty array, not `[""]`.

**Example** (Splitting a comma-separated string)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1161)

Since v4.0.0