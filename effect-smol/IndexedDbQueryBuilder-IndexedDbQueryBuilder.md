Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.IndexedDbQueryBuilder

Typed query builder for an IndexedDB version, with helpers for table queries, database access, clearing data, and running effects in a shared transaction.

**Signature**

```ts
export interface IndexedDbQueryBuilder<
  Source extends IndexedDbVersion.AnyWithProps
> extends Pipeable.Pipeable, Inspectable {
  readonly tables: ReadonlyMap<string, IndexedDbVersion.Tables<Source>>
  readonly database: MutableRef.MutableRef<globalThis.IDBDatabase>
  readonly reactivity: Reactivity.Reactivity["Service"]
  readonly IDBKeyRange: typeof globalThis.IDBKeyRange
  readonly IDBTransaction: globalThis.IDBTransaction | undefined

  readonly use: <A = unknown>(
    f: (database: globalThis.IDBDatabase) => A
  ) => Effect.Effect<A, IndexedDbQueryError>

  readonly from: <
    const Name extends IndexedDbTable.TableName<
      IndexedDbVersion.Tables<Source>
    >
  >(
    table: Name
  ) => IndexedDbQuery.From<IndexedDbVersion.TableWithName<Source, Name>>

  /** @internal */
  readonly fromCache: Map<string, IndexedDbQuery.From<IndexedDbVersion.TableWithName<Source, any>>>

  readonly clearAll: Effect.Effect<void, IndexedDbQueryError>

  readonly withTransaction: <
    Tables extends NonEmptyReadonlyArray<
      IndexedDbTable.TableName<IndexedDbVersion.Tables<Source>>
    >,
    Mode extends "readonly" | "readwrite"
  >(options: {
    readonly tables: Tables
    readonly mode: Mode
    readonly durability?: IDBTransactionDurability
  }) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, IndexedDbTransaction>>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L104)

Since v4.0.0