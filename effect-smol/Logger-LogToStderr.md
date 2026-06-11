Package: `effect`<br />
Module: `Logger`<br />

## Logger.LogToStderr

Context reference that routes the built-in default logger and TTY pretty
console logger to stderr.

**When to use**

Use to route built-in logger output to stderr while keeping stdout reserved
for protocol messages or data output.

**Details**

The reference defaults to `false`. Providing `true` makes the affected
loggers call `console.error` instead of `console.log`.

**See**

- `defaultLogger` for the runtime logger affected by this reference
- `consolePretty` for the TTY-mode pretty console logger affected by this reference
- `withConsoleError` for routing a specific formatter logger to `console.error`

**Signature**

```ts
declare const LogToStderr: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Logger.ts#L189)

Since v4.0.0