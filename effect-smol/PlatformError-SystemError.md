Package: `effect`<br />
Module: `PlatformError`<br />

## PlatformError.SystemError

Error data for a platform or system operation failure.

**When to use**

Use when you need normalized reason data for a platform or system operation
failure, including the operation details.

**Details**

The error records a normalized `_tag`, the module and method that failed,
and optional details such as the syscall, path or descriptor, description,
and original cause. It is usually wrapped in `PlatformError`.

**See**

- `systemError` for creating the usual `PlatformError` wrapper from this reason data
- `BadArgument` for platform API failures caused by rejected caller input before an operation runs
- `SystemErrorTag` for the normalized tag values stored in `_tag`

**Signature**

```ts
declare class SystemError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PlatformError.ts#L109)

Since v4.0.0