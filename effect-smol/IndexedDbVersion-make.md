Package: `@effect/platform-browser`<br />
Module: `IndexedDbVersion`<br />

## IndexedDbVersion.make

Creates an `IndexedDbVersion` from one or more table definitions.

**Signature**

```ts
declare const make: <const Tables extends NonEmptyReadonlyArray<IndexedDbTable.AnyWithProps>>(...tables: Tables) => IndexedDbVersion<Tables[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbVersion.ts#L112)

Since v4.0.0