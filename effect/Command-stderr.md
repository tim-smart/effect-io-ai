Package: `@effect/platform`<br />
Module: `Command`<br />

## Command.stderr

Specify the standard error stream for a command.

**Signature**

```ts
declare const stderr: { (stderr: Command.Output): (self: Command) => Command; (self: Command, stderr: Command.Output): Command; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L259)

Since v1.0.0