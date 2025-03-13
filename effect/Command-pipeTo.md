Package: `@effect/platform`<br />
Module: `Command`<br />

## Command.pipeTo

Pipe one command to another command from left to right.

Conceptually, the equivalent of piping one shell command to another:

```sh
command1 | command2
```

**Signature**

```ts
declare const pipeTo: { (into: Command): (self: Command) => Command; (self: Command, into: Command): Command; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L196)

Since v1.0.0