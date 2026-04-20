Package: `effect`<br />
Module: `Schema`<br />

## Schema.isBase64Url

Validates that a string is valid Base64URL encoded data (Base64 with URL-safe
characters).

**JSON Schema**

This check corresponds to a `pattern` constraint in JSON Schema that matches
Base64URL format.

**Arbitrary**

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings match the Base64URL pattern.

**Signature**

```ts
declare const isBase64Url: (annotations?: Annotations.Filter) => AST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5302)

Since v4.0.0