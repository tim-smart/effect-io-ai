Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeExit

Creates a synchronous encoder for input already typed as the schema's decoded
`Type`, returning an `Exit`.

**When to use**

Use to synchronously encode already typed schema values when you want encoding
failures returned as `Exit` values.

**Details**

The returned function produces `Exit.Success` with the schema's `Encoded` value
or `Exit.Failure` with a `SchemaIssue.Issue`.

**See**

- `encodeUnknownExit` for unknown input with the same `Exit` result shape
- `encodeEffect` for effectful encoding that preserves service requirements

**Signature**

```ts
declare const encodeExit: <S extends Schema.Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Type"], options?: AST.ParseOptions) => Exit.Exit<S["Encoded"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L721)

Since v4.0.0