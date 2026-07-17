Package: `effect`<br />
Module: `GlobalFlag`<br />

## GlobalFlag.LogLevel

Defines the global setting flag for command log level.

**When to use**

Use to add a built-in `--log-level` option that configures the minimum log
level for the command.

**Signature**

```ts
declare const LogLevel: Setting<"log-level", Option.Option<LogLevelType>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/GlobalFlag.ts#L246)

Since v4.0.0