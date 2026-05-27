Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownOption

Creates a decoder for `unknown` input that returns an `Option`.

**When to use**

Use when you need a synchronous yes/no decode from untyped input and do not
need schema issue details.

**Details**

The returned function produces `Option.some` with the decoded `Type` on success
or `Option.none` on failure, discarding issue details.

**See**

- `decodeOption` for input already typed as the schema's `Encoded` type
- `decodeUnknownResult` for retaining schema issues as data

**Signature**

```ts
declare const decodeUnknownOption: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Option.Option<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L421)

Since v3.10.0