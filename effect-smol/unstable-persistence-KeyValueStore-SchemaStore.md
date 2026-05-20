Package: `effect`<br />
Module: `KeyValueStore`<br />

## KeyValueStore.SchemaStore

Schema-aware view of a `KeyValueStore` that stores values as encoded JSON.

**Signature**

```ts
export interface SchemaStore<S extends Schema.Top> {
  readonly [SchemaStoreTypeId]: typeof SchemaStoreTypeId
  /**
   * Returns the value of the specified key if it exists.
   */
  readonly get: (
    key: string
  ) => Effect.Effect<Option.Option<S["Type"]>, KeyValueStoreError | Schema.SchemaError, S["DecodingServices"]>

  /**
   * Sets the value of the specified key.
   */
  readonly set: (
    key: string,
    value: S["Type"]
  ) => Effect.Effect<void, KeyValueStoreError | Schema.SchemaError, S["EncodingServices"]>

  /**
   * Removes the specified key.
   */
  readonly remove: (key: string) => Effect.Effect<void, KeyValueStoreError>

  /**
   * Removes all entries.
   */
  readonly clear: Effect.Effect<void, KeyValueStoreError>

  /**
   * Returns the number of entries.
   */
  readonly size: Effect.Effect<number, KeyValueStoreError>

  /**
   * Updates the value of the specified key if it exists.
   */
  readonly modify: (
    key: string,
    f: (value: S["Type"]) => S["Type"]
  ) => Effect.Effect<
    Option.Option<S["Type"]>,
    KeyValueStoreError | Schema.SchemaError,
    S["DecodingServices"] | S["EncodingServices"]
  >

  /**
   * Returns true if the KeyValueStore contains the specified key.
   */
  readonly has: (key: string) => Effect.Effect<boolean, KeyValueStoreError>

  /**
   * Checks if the KeyValueStore contains any entries.
   */
  readonly isEmpty: Effect.Effect<boolean, KeyValueStoreError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/KeyValueStore.ts#L691)

Since v4.0.0