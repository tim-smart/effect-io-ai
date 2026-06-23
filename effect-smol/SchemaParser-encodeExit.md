Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeExit

Creates a synchronous encoder for input already typed as the schema's decoded
`Type`, reporting failure safely as an `Exit`.

**When to use**

Use when you need synchronous encoding of already typed schema values into
an `Exit` whose failure contains `SchemaIssue.Issue`.

**Details**

The returned function produces `Exit.Success` with the schema's `Encoded` value
or `Exit.Failure` with a `SchemaIssue.Issue`.

**Gotchas**

Because this adapter runs synchronously, async encoding work can produce an
`Exit.Failure` with a defect cause. When the cause contains both schema
issues and non-schema reasons, all reasons remain in the returned `Cause`.

**See**

- `encodeUnknownExit` for unknown input with the same `Exit` result shape
- `encodeEffect` for effectful encoding that preserves service requirements

**Signature**

```ts
declare const encodeExit: <S extends Schema.ConstraintEncoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Type"], options?: SchemaAST.ParseOptions) => Exit.Exit<S["Encoded"], SchemaIssue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L758)

Since v4.0.0