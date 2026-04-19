Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.splitKeyValue

Parses a string into a record of key-value pairs.

Use this when:
- An encoded string contains delimited key-value pairs (e.g. `"a=1,b=2"`).

Behavior:
- Splits the string by `separator` (default `,`), then each pair by `keyValueSeparator` (default `=`).
- Pairs missing a key or value are silently skipped.
- Pure, never fails.

**Example** (Parse key-value string)

```ts
import { SchemaGetter } from "effect"

const parse = SchemaGetter.splitKeyValue<string>()
// "a=1,b=2" -> { a: "1", b: "2" }
```

See also:
- `joinKeyValue` — inverse operation
- `split` — split into an array of strings

**Signature**

```ts
declare const splitKeyValue: <E extends string>(options?: { readonly separator?: string | undefined; readonly keyValueSeparator?: string | undefined; }) => Getter<Record<string, string>, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1106)

Since v4.0.0