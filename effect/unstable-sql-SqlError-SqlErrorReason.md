Package: `effect`<br />
Module: `SqlError`<br />

## SqlError.SqlErrorReason

Union of structured SQL error reasons, each carrying the original cause plus
optional message and operation metadata.

**Signature**

```ts
type SqlErrorReason = | ConnectionError
  | AuthenticationError
  | AuthorizationError
  | SqlSyntaxError
  | UniqueViolation
  | ConstraintError
  | DeadlockError
  | SerializationError
  | LockTimeoutError
  | StatementTimeoutError
  | UnknownError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SqlError.ts#L335)

Since v4.0.0