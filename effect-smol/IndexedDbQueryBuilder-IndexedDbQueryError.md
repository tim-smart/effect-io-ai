Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.IndexedDbQueryError

Tagged error for IndexedDB query operations, carrying a query error reason and the original cause.

**Details**

`reason` is the query failure category, `cause` preserves the underlying
schema, IndexedDB request, transaction, or user callback failure, and
`message` is set to the reason.

**See**

- `ErrorReason` for the supported failure categories

**Signature**

```ts
declare class IndexedDbQueryError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L98)

Since v4.0.0