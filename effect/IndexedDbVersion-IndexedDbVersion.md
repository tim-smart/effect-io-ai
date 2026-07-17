Package: `@effect/platform-browser`<br />
Module: `IndexedDbVersion`<br />

## IndexedDbVersion.IndexedDbVersion

Typed IndexedDB version definition containing the tables available in that schema version.

**Signature**

```ts
export interface IndexedDbVersion<
  out Tables extends IndexedDbTable.AnyWithProps
> extends Pipeable {
  new(_: never): {}
  readonly [TypeId]: typeof TypeId
  readonly tables: ReadonlyMap<string, Tables>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbVersion.ts#L33)

Since v4.0.0