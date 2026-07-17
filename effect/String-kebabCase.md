Package: `effect`<br />
Module: `String`<br />

## String.kebabCase

Converts a string to kebab-case (lowercase with hyphens).

**When to use**

Use to normalize free-form labels, identifiers, or keys into lowercase
hyphen-separated text.

**See**

- `noCase` for configurable delimiters and part transforms
- `snakeCase` for lowercase underscore-separated output
- `constantCase` for uppercase underscore-separated output
- `camelCase` for lower-initial camelCase output
- `pascalCase` for upper-initial PascalCase output

**Signature**

```ts
declare const kebabCase: (self: string) => string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L1422)

Since v4.0.0