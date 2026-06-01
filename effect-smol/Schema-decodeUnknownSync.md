Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeUnknownSync

Decodes an `unknown` input against a schema synchronously, returning the
decoded value or throwing a `SchemaError`.

**When to use**

Use when you need to validate unknown data at a synchronous boundary and want
schema mismatches to throw `SchemaError`.

**Details**

For input already typed as the schema's `Encoded` type use `decodeSync`.
Only service-free schemas can be decoded synchronously. For non-throwing
alternatives see `decodeUnknownOption`, `decodeUnknownExit`, or
`decodeUnknownEffect`. Options may be provided either when creating the
decoder or when applying it; application options override creation options.

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

**See**

- `SchemaParser.decodeUnknownSync` for the adapter that throws an `Error` whose cause is `SchemaIssue.Issue`

**Signature**

```ts
declare const decodeUnknownSync: <S extends Decoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => S["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1545)

Since v4.0.0