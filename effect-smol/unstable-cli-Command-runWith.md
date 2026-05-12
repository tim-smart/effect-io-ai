Package: `effect`<br />
Module: `Command`<br />

## Command.runWith

Runs a command with explicitly provided arguments instead of using process.argv.

This function is useful for testing CLI applications or when you want to
programmatically execute commands with specific arguments.

**Example**

```ts
import { Console, Effect } from "effect"
import { Command, Flag } from "effect/unstable/cli"

const greet = Command.make("greet", {
  name: Flag.string("name"),
  count: Flag.integer("count").pipe(Flag.withDefault(1))
}, (config) =>
  Effect.gen(function*() {
    for (let i = 0; i < config.count; i++) {
      yield* Console.log(`Hello, ${config.name}!`)
    }
  }))

// Test with specific arguments
const testProgram = Effect.gen(function*() {
  const runCommand = Command.runWith(greet, { version: "1.0.0" })

  // Test normal execution
  yield* runCommand(["--name", "Alice", "--count", "2"])

  // Test help display
  yield* runCommand(["--help"])

  // Test version display
  yield* runCommand(["--version"])
})
```

**Signature**

```ts
declare const runWith: <const Name extends string, Input, E, R, ContextInput>(command: Command<Name, Input, ContextInput, E, R>, config: { readonly version: string; }) => (input: ReadonlyArray<string>) => Effect.Effect<void, Exclude<E, Terminal.QuitError> | CliError.CliError, R | Environment>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L1340)

Since v4.0.0