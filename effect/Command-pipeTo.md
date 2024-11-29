# pipeTo

Pipe one command to another command from left to right.

Conceptually, the equivalent of piping one shell command to another:

```sh
command1 | command2
```

To import and use `pipeTo` from the "Command" module:

ts
import \* as Command from "@effect/platform/Command"
// Can be accessed like this
Command.pipeTo
undefined

**Signature**

```ts
export declare const pipeTo: { (into: Command): (self: Command) => Command; (self: Command, into: Command): Command }
```
