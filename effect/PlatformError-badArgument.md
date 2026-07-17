Package: `effect`<br />
Module: `PlatformError`<br />

## PlatformError.badArgument

Creates a `PlatformError` whose reason is a `BadArgument`.

**When to use**

Use to report a platform API rejecting caller input before performing the
underlying operation.

**Signature**

```ts
declare const badArgument: (options: { readonly module: string; readonly method: string; readonly description?: string | undefined; readonly cause?: unknown; }) => PlatformError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PlatformError.ts#L216)

Since v4.0.0