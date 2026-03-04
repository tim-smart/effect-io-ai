Package: `effect`<br />
Module: `Command`<br />

## Command.run

Runs a command with the provided input arguments.

**Example**

```ts
import { Console, Effect } from "effect"
import { Command, Flag } from "effect/unstable/cli"

const greetCommand = Command.make("greet", {
  name: Flag.string("name")
}, (config) =>
  Effect.gen(function*() {
    yield* Console.log(`Hello, ${config.name}!`)
  }))

// Automatically gets args from the Stdio service
const program = Command.run(greetCommand, {
  version: "1.0.0"
})
```

**Signature**

```ts
declare const run: { (config: { readonly version: string; }): <Name extends string, Input, E, R, ContextInput>(command: Command<Name, Input, ContextInput, E, R>) => Effect.Effect<void, E | CliError.CliError, R | Environment>; <Name extends string, Input, E, R, ContextInput>(command: Command<Name, Input, ContextInput, E, R>, config: { readonly version: string; }): Effect.Effect<void, E | CliError.CliError, R | Environment>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L1257)

Since v4.0.0