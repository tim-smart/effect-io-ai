Package: `effect`<br />
Module: `Persistence`<br />

## Persistence.PersistenceStore

Typed store for persisted `Exit` values keyed by `Persistable` requests.

**Signature**

```ts
export interface PersistenceStore {
  readonly get: <A extends Schema.Top, E extends Schema.Top>(
    key: Persistable.Persistable<A, E>
  ) => Effect.Effect<
    Exit.Exit<A["Type"], E["Type"]> | undefined,
    PersistenceError | Schema.SchemaError,
    A["DecodingServices"] | E["DecodingServices"]
  >
  readonly getMany: <A extends Schema.Top, E extends Schema.Top>(
    keys: Iterable<Persistable.Persistable<A, E>>
  ) => Effect.Effect<
    Array<Exit.Exit<A["Type"], E["Type"]> | undefined>,
    PersistenceError | Schema.SchemaError,
    A["DecodingServices"] | E["DecodingServices"]
  >
  readonly set: <A extends Schema.Top, E extends Schema.Top>(
    key: Persistable.Persistable<A, E>,
    value: Exit.Exit<A["Type"], E["Type"]>
  ) => Effect.Effect<void, PersistenceError | Schema.SchemaError, A["EncodingServices"] | E["EncodingServices"]>
  readonly setMany: <A extends Schema.Top, E extends Schema.Top>(
    entries: Iterable<readonly [Persistable.Persistable<A, E>, Exit.Exit<A["Type"], E["Type"]>]>
  ) => Effect.Effect<void, PersistenceError | Schema.SchemaError, A["EncodingServices"] | E["EncodingServices"]>
  readonly remove: <A extends Schema.Top, E extends Schema.Top>(
    key: Persistable.Persistable<A, E>
  ) => Effect.Effect<void, PersistenceError>
  readonly clear: Effect.Effect<void, PersistenceError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Persistence.ts#L85)

Since v4.0.0