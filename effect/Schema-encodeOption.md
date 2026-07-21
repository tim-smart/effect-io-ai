Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeOption

Encodes a typed input (the schema's `Type`) against a schema, returning an
`Option` that is `Some` with the encoded value on success or `None` for schema
mismatches.

**When to use**

Use when you already have a value typed as the schema's `Type` and only need
to know whether encoding succeeded.

**Details**

For `unknown` input use `encodeUnknownOption`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**Gotchas**

Only causes made entirely of schema issues are converted to `None`. Causes
that contain defects, interruptions, or other non-schema reasons throw
instead.

**Signature**

```ts
declare const encodeOption: <S extends ConstraintEncoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Type"], options?: SchemaAST.ParseOptions) => Option_.Option<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L2005)

Since v3.10.0