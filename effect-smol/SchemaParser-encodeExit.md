Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeExit

Creates a synchronous encoder for input already typed as the schema's decoded
`Type`, returning an `Exit`.

The returned function produces `Exit.Success` with the schema's `Encoded` value
or `Exit.Failure` with a `SchemaIssue.Issue`.

**Signature**

```ts
declare const encodeExit: <S extends Schema.Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Type"], options?: AST.ParseOptions) => Exit.Exit<S["Encoded"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L470)

Since v4.0.0