Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeUnknownExit

Creates a synchronous encoder for `unknown` input that returns an `Exit`.

**Details**

The returned function produces `Exit.Success` with the schema's `Encoded` value
or `Exit.Failure` with a `SchemaIssue.Issue`.

**Signature**

```ts
declare const encodeUnknownExit: <S extends Schema.Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Exit.Exit<S["Encoded"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L494)

Since v4.0.0