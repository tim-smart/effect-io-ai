Package: `effect`<br />
Module: `References`<br />

## References.LogToStderr

Context reference for controlling whether built-in console loggers write to stderr.

**When to use**

Use to keep stdout reserved for protocol messages or data output while still
allowing Effect runtime logs to be emitted.

**Details**

The default value is `false`. When set to `true`, the built-in default logger
and TTY pretty console logger call `console.error` instead of `console.log`.

**Signature**

```ts
declare const LogToStderr: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L794)

Since v4.0.0