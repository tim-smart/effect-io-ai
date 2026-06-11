Package: `effect`<br />
Module: `KeyValueStore`<br />

## KeyValueStore.KeyValueStore

Effectful key/value store service for string and binary values.

**Signature**

```ts
export interface KeyValueStore {
  readonly [TypeId]: typeof TypeId
  /**
   * Returns the value of the specified key if it exists.
   */
  readonly get: (key: string) => Effect.Effect<string | undefined, KeyValueStoreError>

  /**
   * Returns the value of the specified key if it exists.
   */
  readonly getUint8Array: (key: string) => Effect.Effect<Uint8Array | undefined, KeyValueStoreError>

  /**
   * Sets the value of the specified key.
   */
  readonly set: (key: string, value: string | Uint8Array) => Effect.Effect<void, KeyValueStoreError>

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
    f: (value: string) => string
  ) => Effect.Effect<string | undefined, KeyValueStoreError>

  /**
   * Updates the value of the specified key if it exists.
   */
  readonly modifyUint8Array: (
    key: string,
    f: (value: Uint8Array) => Uint8Array
  ) => Effect.Effect<Uint8Array | undefined, KeyValueStoreError>

  /**
   * Returns true if the KeyValueStore contains the specified key.
   */
  readonly has: (key: string) => Effect.Effect<boolean, KeyValueStoreError>

  /**
   * Checks whether the KeyValueStore contains any entries.
   */
  readonly isEmpty: Effect.Effect<boolean, KeyValueStoreError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/KeyValueStore.ts#L38)

Since v4.0.0