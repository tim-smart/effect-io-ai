Package: `effect`<br />
Module: `PlatformError`<br />

## PlatformError.systemError

Creates a `PlatformError` whose reason is a `SystemError`.

**When to use**

Use to adapt an operating-system or platform failure into the normalized
platform error model.

**Signature**

```ts
declare const systemError: (options: { readonly _tag: SystemErrorTag; readonly module: string; readonly method: string; readonly description?: string | undefined; readonly syscall?: string | undefined; readonly pathOrDescriptor?: string | number | undefined; readonly cause?: unknown; }) => PlatformError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PlatformError.ts#L217)

Since v4.0.0