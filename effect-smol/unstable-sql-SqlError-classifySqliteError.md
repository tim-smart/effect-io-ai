Package: `effect`<br />
Module: `SqlError`<br />

## SqlError.classifySqliteError

Classifies a native SQLite error cause into a `SqlErrorReason` using its
`code` or `errno`, with optional message and operation metadata.

**Signature**

```ts
declare const classifySqliteError: (cause: unknown, { message, operation }?: SqliteClassifyOptions) => SqlErrorReason
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlError.ts#L538)

Since v4.0.0