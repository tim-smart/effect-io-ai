Package: `@effect/platform`<br />
Module: `Command`<br />

## Command.runInShell

Allows for specifying whether or not a `Command` should be run inside a
shell.

**Signature**

```ts
declare const runInShell: { (shell: string | boolean): (self: Command) => Command; (self: Command, shell: string | boolean): Command; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Command.ts#L208)

Since v1.0.0