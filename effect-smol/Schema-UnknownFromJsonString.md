Package: `effect`<br />
Module: `Schema`<br />

## Schema.UnknownFromJsonString

A transformation schema that decodes a JSON-encoded string into an `unknown` value.

Decoding:
- A `string` is decoded as an `unknown` value.
- If the string is not valid JSON, decoding fails.

Encoding:
- Any value is encoded as a JSON string using `JSON.stringify`.
- If the value is not a valid JSON value, encoding fails.

**Example**

```ts
import { Schema } from "effect"

Schema.decodeUnknownSync(Schema.UnknownFromJsonString)(`{"a":1,"b":2}`)
// => { a: 1, b: 2 }
```

**Signature**

```ts
declare const UnknownFromJsonString: fromJsonString<Unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7064)

Since v4.0.0