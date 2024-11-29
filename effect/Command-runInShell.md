# runInShell

Allows for specifying whether or not a `Command` should be run inside a
shell.

To import and use `runInShell` from the "Command" module:

ts
import \* as Command from "@effect/platform/Command"
// Can be accessed like this
Command.runInShell
undefined

**Signature**

```ts
export declare const runInShell: {
  (shell: string | boolean): (self: Command) => Command
  (self: Command, shell: string | boolean): Command
}
```
