Package: `effect`<br />
Module: `PlatformError`<br />

## PlatformError.BadArgument

Error data for an invalid argument passed to a platform API.

**When to use**

Use when a platform API rejects caller input before performing the underlying
operation and callers need the `BadArgument` reason data directly.

**Details**

The error records the module and method that rejected the argument, with an
optional description and cause. It is usually wrapped in `PlatformError`.

**See**

- `badArgument` for creating a wrapped `PlatformError` whose reason is `BadArgument`
- `SystemError` for failures reported by the host platform or operating system
- `PlatformError` for the wrapper used by most platform APIs

**Signature**

```ts
declare class BadArgument
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PlatformError.ts#L58)

Since v4.0.0