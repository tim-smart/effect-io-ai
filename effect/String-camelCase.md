Package: `effect`<br />
Module: `String`<br />

## String.camelCase

Converts a string to camelCase.

**When to use**

Use to normalize mixed word separators or existing PascalCase/camelCase text
into lower-initial camelCase identifiers.

**See**

- `noCase` for configurable delimiters and part transforms
- `pascalCase` for upper-initial PascalCase output
- `snakeCase` for lowercase underscore-separated output
- `kebabCase` for lowercase hyphen-separated output
- `constantCase` for uppercase underscore-separated output

**Signature**

```ts
declare const camelCase: (self: string) => string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L1356)

Since v4.0.0