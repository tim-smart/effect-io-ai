Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodePromise

Creates a Promise-based encoder for input already typed as the schema's decoded
`Type`.

**When to use**

Use when you need a `Promise`-returning encoder for values already typed as
the schema's decoded `Type`, such as at a JavaScript `Promise` interop
boundary.

**Details**

The returned function resolves with the schema's `Encoded` value on success and
rejects with a `SchemaIssue.Issue` on encoding failure.

**See**

- `encodeUnknownPromise` for encoding untyped input
- `encodeEffect` for effectful encoding or schemas with encoding service requirements

**Signature**

```ts
declare const encodePromise: <S extends Schema.Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Type"], options?: AST.ParseOptions) => Promise<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L670)

Since v3.10.0