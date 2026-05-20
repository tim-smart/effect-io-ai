Package: `effect`<br />
Module: `KeyValueStore`<br />

## KeyValueStore.MakeOptions

Implementation callbacks used by `make` to construct a `KeyValueStore`.

**Details**

Primitive operations are required, while helpers such as `has`, `isEmpty`,
and `modify` can be supplied to override the defaults.

**Signature**

```ts
type MakeOptions = Partial<KeyValueStore> & {
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
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/KeyValueStore.ts#L120)

Since v4.0.0