Package: `effect`<br />
Module: `Command`<br />

## Command.withSubcommands

Adds subcommands to a command, creating a hierarchical command structure.

Subcommands can access their parent's parsed configuration by yielding the parent
command within their handler. This enables patterns like global flags that affect
all subcommands.

**Example**

```ts
import { Console, Effect } from "effect"
import { Command, Flag } from "effect/unstable/cli"

// Parent command with global flags
const git = Command.make("git", {
  verbose: Flag.boolean("verbose")
})

// Subcommand that accesses parent config
const clone = Command.make("clone", {
  repository: Flag.string("repo")
}, (config) =>
  Effect.gen(function*() {
    const parent = yield* git // Access parent's parsed config
    if (parent.verbose) {
      yield* Console.log("Verbose mode enabled")
    }
    yield* Console.log(`Cloning ${config.repository}`)
  }))

const app = git.pipe(Command.withSubcommands([clone]))
// Usage: git --verbose clone --repo github.com/foo/bar
```

**Signature**

```ts
declare const withSubcommands: { <const Subcommands extends ReadonlyArray<Command.SubcommandEntry>>(subcommands: Subcommands): <Name extends string, Input, E, R>(self: Command<Name, Input, E, R>) => Command<Name, Input, E | ExtractSubcommandErrors<Subcommands>, R | Exclude<ExtractSubcommandContext<Subcommands>, CommandContext<Name>>>; <Name extends string, Input, E, R, const Subcommands extends ReadonlyArray<Command.SubcommandEntry>>(self: Command<Name, Input, E, R>, subcommands: Subcommands): Command<Name, Input, E | ExtractSubcommandErrors<Subcommands>, R | Exclude<ExtractSubcommandContext<Subcommands>, CommandContext<Name>>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L568)

Since v4.0.0