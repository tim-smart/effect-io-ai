Package: `effect`<br />
Module: `String`<br />

## String.configCase

Converts a string to CONFIG_CASE (uppercase with underscores) for
configuration keys.

**When to use**

Use to normalize configuration path segments into environment-variable-like
keys while preserving numeric word groups such as `v2`.

**Details**

Unlike `constantCase`, digit-letter boundaries are not split. For
example, `"api-v2 xml"` becomes `"API_V2_XML"`.

**See**

- `constantCase` for standard uppercase underscore-separated output

**Signature**

```ts
declare const configCase: (self: string) => string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/String.ts#L1402)

Since v4.0.0