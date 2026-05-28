Package: `effect`<br />
Module: `KeyValueStore`<br />

## KeyValueStore.LayerSqlOptions

Options for configuring the SQL-backed `KeyValueStore` layer.

**Signature**

```ts
export interface LayerSqlOptions {
  /**
   * The SQL table name used to store values.
   *
   * @default "effect_key_value_store"
   */
  readonly table?: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/KeyValueStore.ts#L464)

Since v4.0.0