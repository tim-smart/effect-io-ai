## start

Start running the command and return a handle to the running process.

**Signature**

```ts
declare const start: (command: Command) => Effect<Process, PlatformError, CommandExecutor | Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L219)

Since v1.0.0