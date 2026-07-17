Package: `effect`<br />
Module: `Command`<br />

## Command.wizard

Interactively constructs command-line arguments for a command.

**Details**

The returned arguments include the command name and can be inspected,
modified, or passed to another command runner by the caller.

**Example** (Constructing command arguments)

```ts
import { Console, Effect } from "effect"
import { Command } from "effect/unstable/cli"

const command = Command.make("app")

const program = Effect.gen(function*() {
  const args = yield* Command.wizard(command)
  yield* Console.log(args.join(" "))
})
```

**Signature**

```ts
declare const wizard: <Name extends string, Input, E, R, ContextInput>(command: Command<Name, Input, ContextInput, E, R>, options?: { readonly prefix?: ReadonlyArray<string> | undefined; } | undefined) => Effect.Effect<Array<string>, CliError.CliError | Terminal.QuitError, Environment>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Command.ts#L1399)

Since v4.0.0