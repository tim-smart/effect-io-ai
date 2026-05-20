Package: `effect`<br />
Module: `PlatformError`<br />

## PlatformError.SystemError

Error data for a platform or system operation failure.

**Details**

The error records a normalized `_tag`, the module and method that failed,
and optional details such as the syscall, path or descriptor, description,
and original cause. It is usually wrapped in `PlatformError`.

**Signature**

```ts
declare class SystemError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PlatformError.ts#L101)

Since v4.0.0