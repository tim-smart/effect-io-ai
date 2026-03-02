Package: `effect`<br />
Module: `TestConsole`<br />

## TestConsole.TestConsole.Method

Represents a console method name that can be invoked on the TestConsole.
This type includes all methods available on the Console interface.

**Example**

```ts
// Method represents console method names like:
// "log", "error", "warn", "debug", "info", etc.
// All methods from the Console interface are supported
```

**Signature**

```ts
type Method = keyof Console.Console
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestConsole.ts#L79)

Since v4.0.0