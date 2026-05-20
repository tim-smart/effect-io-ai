Package: `effect`<br />
Module: `KeyValueStore`<br />

## KeyValueStore.MakeStringOptions

Implementation callbacks for adapting a string-only backing store into a
`KeyValueStore`.

**Signature**

```ts
type MakeStringOptions = Partial<Omit<KeyValueStore, "set">> & {
  /**
   * Returns the value of the specified key if it exists.
   */
  readonly get: (key: string) => Effect.Effect<string | undefined, KeyValueStoreError>

  /**
   * Sets the value of the specified key.
   */
  readonly set: (key: string, value: string) => Effect.Effect<void, KeyValueStoreError>

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/KeyValueStore.ts#L159)

Since v4.0.0