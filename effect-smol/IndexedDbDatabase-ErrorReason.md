Package: `@effect/platform-browser`<br />
Module: `IndexedDbDatabase`<br />

## IndexedDbDatabase.ErrorReason

String union describing the failure categories for IndexedDB database opening, migration, and schema operations.

**Signature**

```ts
type ErrorReason = | "TransactionError"
  | "MissingTable"
  | "OpenError"
  | "UpgradeError"
  | "Aborted"
  | "Blocked"
  | "MissingIndex"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbDatabase.ts#L77)

Since v4.0.0