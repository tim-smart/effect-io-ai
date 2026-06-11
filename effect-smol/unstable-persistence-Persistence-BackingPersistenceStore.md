Package: `effect`<br />
Module: `Persistence`<br />

## Persistence.BackingPersistenceStore

Raw persistence backing store for JSON-compatible objects with optional
TTLs.

**Signature**

```ts
export interface BackingPersistenceStore {
  readonly get: (key: string) => Effect.Effect<object | undefined, PersistenceError>
  readonly getMany: (
    keys: Arr.NonEmptyArray<string>
  ) => Effect.Effect<Arr.NonEmptyArray<object | undefined>, PersistenceError>
  readonly set: (
    key: string,
    value: object,
    ttl: Duration.Duration | undefined
  ) => Effect.Effect<void, PersistenceError>
  readonly setMany: (
    entries: Arr.NonEmptyArray<readonly [key: string, value: object, ttl: Duration.Duration | undefined]>
  ) => Effect.Effect<void, PersistenceError>
  readonly remove: (key: string) => Effect.Effect<void, PersistenceError>
  readonly clear: Effect.Effect<void, PersistenceError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistence.ts#L114)

Since v4.0.0