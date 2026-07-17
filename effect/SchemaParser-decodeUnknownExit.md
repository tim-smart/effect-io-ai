Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownExit

Creates a synchronous decoder for `unknown` input that reports failure safely
as an `Exit`.

**When to use**

Use when you need to decode unknown input synchronously into an `Exit` whose
failure contains `SchemaIssue.Issue`.

**Details**

The returned function produces `Exit.Success` with the decoded `Type`.
Schema issues are represented by an `Exit.Failure` cause containing a
`SchemaIssue.Issue`.

**Gotchas**

Because this adapter runs synchronously, async decoding work can produce an
`Exit.Failure` with a defect cause. When the cause contains both schema
issues and non-schema reasons, all reasons remain in the returned `Cause`.

**See**

- `decodeExit` for input already typed as the schema's `Encoded` type
- `decodeUnknownEffect` for preserving decoding services and failures in `Effect`
- `decodeUnknownResult` for returning schema issues as data
- `decodeUnknownSync` for throwing on decoding failure

**Signature**

```ts
declare const decodeUnknownExit: <S extends Schema.ConstraintDecoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Exit.Exit<S["Type"], SchemaIssue.Issue>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaParser.ts#L393)

Since v4.0.0