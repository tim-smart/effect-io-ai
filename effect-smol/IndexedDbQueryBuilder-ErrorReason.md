Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.ErrorReason

String union describing IndexedDB query failure categories such as decoding, encoding, and transaction errors.

**Signature**

```ts
type ErrorReason = | "UnknownError"
  | "DecodeError"
  | "EncodeError"
  | "TransactionError"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L78)

Since v4.0.0