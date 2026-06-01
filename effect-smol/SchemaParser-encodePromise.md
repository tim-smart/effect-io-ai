Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodePromise

Creates a Promise-based encoder for input already typed as the schema's decoded
`Type`.

**When to use**

Use when you already have values typed as the schema's decoded `Type` and
need encoding to return a JavaScript `Promise` that rejects with
`SchemaIssue.Issue`.

**Details**

The returned function resolves with the schema's `Encoded` value on success and
rejects with a `SchemaIssue.Issue` on encoding failure.

**See**

- `encodeUnknownPromise` for encoding untyped input
- `encodeEffect` for effectful encoding or schemas with encoding service requirements

**Signature**

```ts
declare const encodePromise: <S extends Schema.Encoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Type"], options?: SchemaAST.ParseOptions) => Promise<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L649)

Since v3.10.0