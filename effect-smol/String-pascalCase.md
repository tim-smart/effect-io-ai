Package: `effect`<br />
Module: `String`<br />

## String.pascalCase

Converts a string to PascalCase.

**When to use**

Use to normalize strings from spaces, separators, or camel/Pascal word
boundaries into PascalCase.

**See**

- `camelCase` for lower-initial camelCase output
- `noCase` for configurable delimiters and part transforms
- `snakeToPascal` for converting known snake_case input only

**Signature**

```ts
declare const pascalCase: (self: string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L1373)

Since v4.0.0