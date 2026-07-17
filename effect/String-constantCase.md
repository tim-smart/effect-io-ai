Package: `effect`<br />
Module: `String`<br />

## String.constantCase

Converts a string to CONSTANT_CASE (uppercase with underscores).

**When to use**

Use to normalize words from mixed input formats into uppercase,
underscore-separated identifiers.

**See**

- `snakeCase` for lowercase underscore-separated output
- `kebabCase` for lowercase hyphen-separated output
- `camelCase` for lower-initial camelCase output
- `pascalCase` for upper-initial PascalCase output
- `configCase` for configuration key casing that preserves numeric word groups
- `noCase` for configurable delimiters and part transforms

**Signature**

```ts
declare const constantCase: (self: string) => string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L1379)

Since v4.0.0