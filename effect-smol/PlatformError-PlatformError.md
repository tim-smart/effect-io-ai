Package: `effect`<br />
Module: `PlatformError`<br />

## PlatformError.PlatformError

Tagged error used by platform APIs to report either invalid arguments or
system-level failures.

**Details**

The `reason` field contains the underlying `BadArgument` or `SystemError`.
When that reason has a cause, the cause is preserved on the wrapper.

**Signature**

```ts
declare class PlatformError { constructor(reason: BadArgument | SystemError) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PlatformError.ts#L134)

Since v4.0.0