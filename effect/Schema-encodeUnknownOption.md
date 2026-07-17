Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownOption

Encodes an `unknown` input against a schema, returning an `Option` that is
`Some` with the encoded value on success or `None` for schema mismatches.

**When to use**

Use when you do not know the input type statically and only need to know
whether encoding succeeded.

**Details**

Prefer this over `encodeUnknownExit` or `encodeUnknownEffect`
when you don't need error details. For values already typed as the schema's
`Type` use `encodeOption`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**Gotchas**

Only causes made entirely of schema issues are converted to `None`. Causes
that contain defects, interruptions, or other non-schema reasons throw
instead.

**Signature**

```ts
declare const encodeUnknownOption: <S extends ConstraintEncoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => Option_.Option<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L1973)

Since v3.10.0