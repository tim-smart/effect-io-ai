Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownExit

Encodes an `unknown` input against a schema synchronously, returning an
`Exit` that is either a `Success` with the encoded value or a `Failure`.

**When to use**

Use when you need to encode unknown input into an `Exit` and capture schema
mismatches as `SchemaError`.

**Details**

Only usable with schemas that have no `EncodingServices` requirement. Prefer
`encodeExit` when the value is already typed as the schema's `Type`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.
Schema mismatches are represented by a `Failure` cause containing
`SchemaError`.

**Gotchas**

Schema issue fail reasons are wrapped as `SchemaError`. Defects,
interruptions, and other non-schema reasons remain in the returned `Cause`,
including when they are mixed with schema issues.

**See**

- `SchemaParser.encodeUnknownExit` for the adapter whose failure contains `SchemaIssue.Issue` directly

**Signature**

```ts
declare const encodeUnknownExit: <S extends ConstraintEncoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Exit_.Exit<S["Encoded"], SchemaError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L1905)

Since v4.0.0