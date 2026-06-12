Package: `effect`<br />
Module: `Schema`<br />

## Schema.MutableJson

Recursive TypeScript type for mutable JSON values: `null`, `number`,
`boolean`, `string`, mutable arrays, or mutable string-keyed records.

**Signature**

```ts
type MutableJson = null | number | boolean | string | MutableJsonArray | MutableJsonObject
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L13538)

Since v4.0.0