Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeExit

Creates a synchronous decoder for input already typed as the schema's `Encoded`
type, reporting failure safely as an `Exit`.

**When to use**

Use to synchronously decode already typed `Encoded` input when you want
decoding failures returned as `Exit` values.

**Details**

The returned function produces `Exit.Success` with the decoded `Type` or
`Exit.Failure` with a `SchemaIssue.Issue`.

**See**

- `decodeUnknownExit` for untyped input with the same `Exit` result shape
- `decodeEffect` for preserving decoding services and failures in `Effect`

**Signature**

```ts
declare const decodeExit: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Encoded"], options?: AST.ParseOptions) => Exit.Exit<S["Type"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L398)

Since v4.0.0