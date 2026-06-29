Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeUnknownOption

Decodes an `unknown` input against a schema, returning an `Option` that is
`Some` with the decoded value on success or `None` for schema mismatches.

**When to use**

Use when you do not know the input type statically and only need to know
whether decoding succeeded.

**Details**

Prefer this over `decodeUnknownExit` or `decodeUnknownEffect`
when you don't need error details. For input already typed as the schema's
`Encoded` type use `decodeOption`.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.

**Gotchas**

Only causes made entirely of schema issues are converted to `None`. Causes
that contain defects, interruptions, or other non-schema reasons throw
instead.

**Signature**

```ts
declare const decodeUnknownOption: <S extends ConstraintDecoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Option_.Option<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1500)

Since v3.10.0