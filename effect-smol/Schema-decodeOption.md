Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeOption

Decodes a typed input (the schema's `Encoded` type) against a schema,
returning an `Option` that is `Some` with the decoded value on success or
`None` on failure.

**When to use**

Use when you already have input typed as the schema's `Encoded` type and
only need to know whether decoding succeeded.

**Details**

For `unknown` input use `decodeUnknownOption`.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.

**Signature**

```ts
declare const decodeOption: <S extends Decoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Encoded"], options?: SchemaAST.ParseOptions) => Option_.Option<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1319)

Since v3.10.0