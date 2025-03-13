Package: `@effect/platform`<br />
Module: `Command`<br />

## Command.stdin

Specify the standard input stream for a command.

**Signature**

```ts
declare const stdin: { (stdin: Command.Input): (self: Command) => Command; (self: Command, stdin: Command.Input): Command; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L270)

Since v1.0.0