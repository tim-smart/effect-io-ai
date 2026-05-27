Package: `effect`<br />
Module: `PlatformError`<br />

## PlatformError.PlatformError

Tagged error used by platform APIs to report either invalid arguments or
system-level failures.

**When to use**

Use as the shared error type for platform APIs that expose invalid arguments
and host or operating-system failures through a single `Effect` error
channel.

**Details**

The `reason` field contains the underlying `BadArgument` or `SystemError`.
When that reason has a cause, the cause is preserved on the wrapper.

**See**

- `BadArgument` for invalid inputs rejected before an operation runs
- `SystemError` for failures reported by the host platform or operating system
- `badArgument` for creating this wrapper from rejected caller input
- `systemError` for creating this wrapper from a host or operating-system failure

**Signature**

```ts
declare class PlatformError { constructor(reason: BadArgument | SystemError) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PlatformError.ts#L179)

Since v4.0.0