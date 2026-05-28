Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownPromise

Encodes an `unknown` input against a schema, returning a `Promise` that
resolves with the encoded value or rejects with a schema issue.

**When to use**

Use when integrating unknown input serialization with Promise-based APIs.

**Details**

For typed input use `encodePromise`.
Options may be provided either when creating the encoder or when applying it;
application options override creation options.

**Signature**

```ts
declare const encodeUnknownPromise: <S extends Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Promise<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1718)

Since v3.10.0