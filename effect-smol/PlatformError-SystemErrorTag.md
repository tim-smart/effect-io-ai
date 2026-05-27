Package: `effect`<br />
Module: `PlatformError`<br />

## PlatformError.SystemErrorTag

Normalized category for failures reported by platform or system operations.

**When to use**

Use to type or match the normalized `_tag` on `SystemError` values reported
by platform operations.

**Details**

The tags group lower-level platform errors into a stable set such as
`NotFound`, `PermissionDenied`, `TimedOut`, and `Unknown`.

**See**

- `SystemError` for the error data that carries this tag on its `_tag` field
- `systemError` for creating a `PlatformError` from a system failure with one of these tags

**Signature**

```ts
type SystemErrorTag = | "AlreadyExists"
  | "BadResource"
  | "Busy"
  | "InvalidData"
  | "NotFound"
  | "PermissionDenied"
  | "TimedOut"
  | "UnexpectedEof"
  | "Unknown"
  | "WouldBlock"
  | "WriteZero"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PlatformError.ts#L97)

Since v4.0.0