Package: `effect`<br />
Module: `Command`<br />

## Command.CommandContext

Service context for a specific command, enabling subcommands to access their parent's parsed configuration.

When a subcommand handler needs access to flags or arguments from a parent command,
it can yield the parent command directly to retrieve its config. This is powered by
Effect's service system - each command automatically creates a service that provides
its parsed input to child commands.

**Example**

```ts
import { Console, Effect } from "effect"
import { Command, Flag } from "effect/unstable/cli"

const parent = Command.make("app").pipe(
  Command.withSharedFlags({
    verbose: Flag.boolean("verbose"),
    config: Flag.string("config")
  })
)

const child = Command.make("deploy", {
  target: Flag.string("target")
}, (config) =>
  Effect.gen(function*() {
    // Access parent's config by yielding the parent command
    const parentConfig = yield* parent
    yield* Console.log(`Verbose: ${parentConfig.verbose}`)
    yield* Console.log(`Config: ${parentConfig.config}`)
    yield* Console.log(`Target: ${config.target}`)
  }))

const app = parent.pipe(Command.withSubcommands([child]))
// Usage: app --verbose --config prod.json deploy --target staging
```

**Signature**

```ts
export interface CommandContext<Name extends string> {
  readonly _: unique symbol
  readonly name: Name
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L348)

Since v4.0.0