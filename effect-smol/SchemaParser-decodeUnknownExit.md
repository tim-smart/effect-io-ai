Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownExit

Creates a synchronous decoder for `unknown` input that returns an `Exit`.

**When to use**

Use when decoding unknown input synchronously and preserving the parser
outcome as an `Exit` value.

**Details**

The returned function produces `Exit.Success` with the decoded `Type`.
Schema issues are represented by an `Exit.Failure` cause containing a
`SchemaIssue.Issue`.

**Gotchas**

Because this adapter runs synchronously, async decoding work can produce an
`Exit.Failure` with a defect cause.

**See**

- `decodeExit` for input already typed as the schema's `Encoded` type
- `decodeUnknownEffect` for preserving decoding services and failures in `Effect`
- `decodeUnknownOption` for discarding issue details
- `decodeUnknownResult` for returning schema issues as data
- `decodeUnknownSync` for throwing on decoding failure

**Signature**

```ts
declare const decodeUnknownExit: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Exit.Exit<S["Type"], Issue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L370)

Since v4.0.0