Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeUnknownExit

Decodes an `unknown` input against a schema synchronously, returning an
`Exit` that is either a `Success` with the decoded value or a `Failure`.

**When to use**

Use when you need to decode unknown input into an `Exit` and capture schema
mismatches as `SchemaError`.

**Details**

Only usable with schemas that have no `DecodingServices` requirement. Prefer
`decodeExit` when the input is already typed as the schema's `Encoded`
type.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.
Schema mismatches are represented by a `Failure` cause containing
`SchemaError`.

**Gotchas**

Schema issue fail reasons are wrapped as `SchemaError`. Defects,
interruptions, and other non-schema reasons remain in the returned `Cause`,
including when they are mixed with schema issues.

**See**

- `SchemaParser.decodeUnknownExit` for the adapter whose failure contains `SchemaIssue.Issue` directly

**Signature**

```ts
declare const decodeUnknownExit: <S extends ConstraintDecoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Exit_.Exit<S["Type"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1426)

Since v4.0.0