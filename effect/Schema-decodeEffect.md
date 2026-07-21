Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeEffect

Decodes a typed input (the schema's `Encoded` type) against a schema,
returning an `Effect` that succeeds with the decoded value or fails with a
`SchemaError`.

**When to use**

Use when you need to decode input already typed as the schema's `Encoded`
type in an `Effect` whose failure channel is `SchemaError`.

**Details**

For `unknown` input use `decodeUnknownEffect`.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.

**See**

- `SchemaParser.decodeEffect` for the adapter that fails with `SchemaIssue.Issue` directly

**Signature**

```ts
declare const decodeEffect: <S extends Constraint>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Encoded"], options?: SchemaAST.ParseOptions) => Effect.Effect<S["Type"], SchemaError, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L1400)

Since v4.0.0