Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeExit

Decodes a typed input (the schema's `Encoded` type) against a schema
synchronously, returning an `Exit` that is either a `Success` with the decoded
value or a `Failure`.

**When to use**

Use when you need to decode already typed `Encoded` input into an `Exit` and
capture schema mismatches as `SchemaError`.

**Details**

Only usable with schemas that have no `DecodingServices` requirement. For
`unknown` input use `decodeUnknownExit`.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.
Schema mismatches are represented by a `Failure` cause containing
`SchemaError`.

**Gotchas**

Schema issue fail reasons are wrapped as `SchemaError`. Defects,
interruptions, and other non-schema reasons remain in the returned `Cause`,
including when they are mixed with schema issues.

**See**

- `SchemaParser.decodeExit` for the adapter whose failure contains `SchemaIssue.Issue` directly

**Signature**

```ts
declare const decodeExit: <S extends ConstraintDecoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Encoded"], options?: SchemaAST.ParseOptions) => Exit_.Exit<S["Type"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1463)

Since v4.0.0