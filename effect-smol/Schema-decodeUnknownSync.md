Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeUnknownSync

Decodes an `unknown` input against a schema synchronously, throwing a
`SchemaError` on failure. Use this when you want to validate data at a
boundary and treat a schema mismatch as an unrecoverable error. For
non-throwing alternatives see `decodeUnknownOption`,
`decodeUnknownExit`, or `decodeUnknownEffect`. For typed input
use `decodeSync`.

**Example** (Decoding with a transformation schema)

```ts
import { Schema } from "effect"

const NumberFromString = Schema.NumberFromString

console.log(Schema.decodeUnknownSync(NumberFromString)("42"))
// Output: 42

Schema.decodeUnknownSync(NumberFromString)("not a number")
// throws SchemaError: NumberFromString
//   └─ Encoded side transformation failure
//      └─ NumberFromString
//         └─ Expected a numeric string, actual "not a number"
```

**Signature**

```ts
declare const decodeUnknownSync: <S extends Top & { readonly DecodingServices: never; }>(schema: S) => (input: unknown, options?: AST.ParseOptions) => S["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1264)

Since v4.0.0