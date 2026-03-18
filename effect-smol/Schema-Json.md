Package: `effect`<br />
Module: `Schema`<br />

## Schema.Json

Recursive TypeScript type for any valid immutable JSON value: `null`,
`number`, `boolean`, `string`, a readonly array of `Json` values, or a
readonly record of `string → Json`. For the corresponding schema, see the
`Json` const.

**Signature**

```ts
type Json = null | number | boolean | string | JsonArray | JsonObject
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11046)

Since v4.0.0