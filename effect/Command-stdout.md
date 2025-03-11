## stdout

Specify the standard output stream for a command.

**Signature**

```ts
declare const stdout: { (stdout: Command.Output): (self: Command) => Command; (self: Command, stdout: Command.Output): Command; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L281)

Since v1.0.0