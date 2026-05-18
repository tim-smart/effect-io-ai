Package: `effect`<br />
Module: `PlatformError`<br />

## PlatformError.SystemErrorTag

Normalized category for failures reported by platform or system operations.

The tags group lower-level platform errors into a stable set such as
`NotFound`, `PermissionDenied`, `TimedOut`, and `Unknown`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PlatformError.ts#L72)

Since v4.0.0