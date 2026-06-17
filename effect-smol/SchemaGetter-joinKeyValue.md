Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.joinKeyValue

Joins a record of key-value pairs into a delimited string.

**When to use**

Use when you need a schema getter to serialize a present decoded record as a
delimited key-value string.

**Details**

The getter is pure and never fails. It joins entries with `separator`
(default `,`) and joins each key and value with `keyValueSeparator` (default
`=`).

**Example** (Joining key-value records)

```ts
import { SchemaGetter } from "effect"

const join = SchemaGetter.joinKeyValue()
// { a: "1", b: "2" } -> "a=1,b=2"
```

**See**

- `splitKeyValue` for the inverse operation

**Signature**

```ts
declare const joinKeyValue: <E extends Record<PropertyKey, string>>(options?: { readonly separator?: string | undefined; readonly keyValueSeparator?: string | undefined; }) => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1122)

Since v4.0.0