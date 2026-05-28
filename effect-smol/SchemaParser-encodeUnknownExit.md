Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeUnknownExit

Creates a synchronous encoder for `unknown` input that reports failure safely
as an `Exit`.

**When to use**

Use to encode unknown input synchronously when you want the encoded value or
schema issue represented as an `Exit`.

**Details**

The returned function produces `Exit.Success` with the schema's `Encoded` value
or `Exit.Failure` with a `SchemaIssue.Issue`.

**See**

- `encodeExit` for input already typed as the schema's decoded `Type`
- `encodeUnknownEffect` for effectful encoding that preserves service requirements

**Signature**

```ts
declare const encodeUnknownExit: <S extends Schema.Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Exit.Exit<S["Encoded"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L697)

Since v4.0.0