Package: `@effect/platform`<br />
Module: `Command`<br />

## Command.workingDirectory

Set the working directory that will be used when this command will be run.

For piped commands, the working directory of each command will be set to the
specified working directory.

**Signature**

```ts
declare const workingDirectory: { (cwd: string): (self: Command) => Command; (self: Command, cwd: string): Command; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L295)

Since v1.0.0