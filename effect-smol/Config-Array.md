Package: `effect`<br />
Module: `Config`<br />

## Config.Array

Schema for array types that can also be parsed from a flat separated string.

**When to use**

Use when reading array values from a single env var, such as comma-separated
exporter names.

**Details**

Accepts either a JSON-like array from the provider or a flat string like
`"a,b,c"`. The `separator` defaults to `","` and can be customized.

**Signature**

```ts
declare const Array: <V extends Schema.Top>(value: V, options?: { readonly separator?: string | undefined; }) => Schema.Union<readonly [Schema.compose<Schema.$Array<V>, Schema.decodeTo<Schema.$Array<Schema.String>, Schema.String, never, never>>, Schema.$Array<V>]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L855)

Since v4.0.0