## exitCode

Returns the exit code of the command after the process has completed
execution.

**Signature**

```ts
declare const exitCode: (self: Command) => Effect<ExitCode, PlatformError, CommandExecutor>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L140)

Since v1.0.0