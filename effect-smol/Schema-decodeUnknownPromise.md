Package: `effect`<br />
Module: `Schema`<br />

## Schema.decodeUnknownPromise

Decodes an `unknown` input against a schema, returning a `Promise` that
resolves with the decoded value or rejects with a schema issue.

**When to use**

Use when integrating unknown input validation with Promise-based APIs.

**Details**

For typed input use `decodePromise`.
Options may be provided either when creating the decoder or when applying it;
application options override creation options.

**Signature**

```ts
declare const decodeUnknownPromise: <S extends Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Promise<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1425)

Since v3.10.0