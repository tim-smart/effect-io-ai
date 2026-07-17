Package: `effect`<br />
Module: `String`<br />

## String.snakeCase

Converts a string to snake_case (lowercase with underscores).

**When to use**

Use to normalize mixed-case or separator-delimited text into lowercase words
joined with underscores.

**See**

- `noCase` for configurable lower-level normalization
- `kebabCase` for lowercase hyphen-separated output
- `constantCase` for uppercase underscore-separated output

**Signature**

```ts
declare const snakeCase: (self: string) => string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L1441)

Since v4.0.0