Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.joinKeyValue

Joins a record of key-value pairs into a delimited string.

Use this when:
- A decoded record needs to be serialized as a delimited key-value string.

Behavior:
- Joins entries with `separator` (default `,`) and key/value with `keyValueSeparator` (default `=`).
- Pure, never fails.

**Example** (Join key-value record)

```ts
import { SchemaGetter } from "effect"

const join = SchemaGetter.joinKeyValue()
// { a: "1", b: "2" } -> "a=1,b=2"
```

See also:
- `splitKeyValue` — inverse operation

**Signature**

```ts
declare const joinKeyValue: <E extends Record<PropertyKey, string>>(options?: { readonly separator?: string | undefined; readonly keyValueSeparator?: string | undefined; }) => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1151)

Since v4.0.0