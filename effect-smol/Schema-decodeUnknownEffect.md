Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeUnknownEffect

Decodes an `unknown` input against a schema, returning an `Effect` that
succeeds with the decoded value or fails with a `SchemaError`.

**When to use**

Use when you need to decode unknown input in an `Effect` whose failure
channel is `SchemaError`.

**Details**

Prefer `decodeEffect` when the input is already typed as the schema's
`Encoded` type.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.

**See**

- `SchemaParser.decodeUnknownEffect` for the adapter that fails with `SchemaIssue.Issue` directly

**Signature**

```ts
declare const decodeUnknownEffect: <S extends Constraint>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Effect.Effect<S["Type"], SchemaError, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1319)

Since v4.0.0