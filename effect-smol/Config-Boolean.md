Package: `effect`<br />
Module: `Config`<br />

## Config.Boolean

Schema for boolean values encoded as strings.

**When to use**

Use when you need the reusable boolean schema value for `Config.schema` with
custom paths.

**Details**

Accepted string values: `true`, `false`, `yes`, `no`, `on`, `off`, `1`,
`0`, `y`, `n` (case-sensitive).

**See**

- `boolean` – convenience constructor

**Signature**

```ts
declare const Boolean: Schema.decodeTo<Schema.Boolean, Schema.Literals<readonly ["true", "yes", "on", "1", "y", "false", "no", "off", "0", "n"]>, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L776)

Since v4.0.0