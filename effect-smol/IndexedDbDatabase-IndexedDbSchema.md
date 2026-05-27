Package: `@effect/platform-browser`<br />
Module: `IndexedDbDatabase`<br />

## IndexedDbDatabase.IndexedDbSchema

Describes an IndexedDB schema version and its migrations, and acts as an effect that yields a query builder for the target version.

**Signature**

```ts
export interface IndexedDbSchema<
  in out FromVersion extends IndexedDbVersion.AnyWithProps,
  in out ToVersion extends IndexedDbVersion.AnyWithProps,
  out Error = never
> extends
  Effect.Effect<
    IndexedDbQueryBuilder.IndexedDbQueryBuilder<ToVersion>,
    never,
    IndexedDbDatabase
  >
{
  new(_: never): {}

  readonly previous: [FromVersion] extends [never] ? undefined
    : IndexedDbSchema<never, FromVersion, Error>
  readonly fromVersion: FromVersion
  readonly version: ToVersion

  readonly migrate: [FromVersion] extends [never] ? (query: Transaction<ToVersion>) => Effect.Effect<void, Error>
    : (
      fromQuery: Transaction<FromVersion>,
      toQuery: Transaction<ToVersion>
    ) => Effect.Effect<void, Error>

  readonly add: <Version extends IndexedDbVersion.AnyWithProps, MigrationError>(
    version: Version,
    migrate: (
      fromQuery: Transaction<ToVersion>,
      toQuery: Transaction<Version>
    ) => Effect.Effect<void, MigrationError>
  ) => IndexedDbSchema<ToVersion, Version, MigrationError | Error>

  readonly getQueryBuilder: Effect.Effect<
    IndexedDbQueryBuilder.IndexedDbQueryBuilder<ToVersion>,
    never,
    IndexedDbDatabase
  >

  readonly layer: (
    databaseName: string
  ) => Layer.Layer<
    IndexedDbDatabase,
    IndexedDbDatabaseError,
    IndexedDb.IndexedDb
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbDatabase.ts#L164)

Since v4.0.0