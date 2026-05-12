Package: `effect`<br />
Module: `Command`<br />

## Command.make

Creates a Command from a name, optional config, optional handler function, and optional description.

The make function is the primary constructor for CLI commands. It provides multiple overloads
to support different patterns of command creation, from simple commands with no configuration
to complex commands with nested configurations and error handling.

**Example**

```ts
import { Console, Effect } from "effect"
import { Argument, Command, Flag } from "effect/unstable/cli"

// Simple command with no configuration
const version = Command.make("version")

// Command with simple flags
const greet = Command.make("greet", {
  name: Flag.string("name"),
  count: Flag.integer("count").pipe(Flag.withDefault(1))
})

// Command with nested configuration
const deploy = Command.make("deploy", {
  environment: Flag.string("env").pipe(
    Flag.withDescription("Target environment")
  ),
  server: {
    host: Flag.string("host").pipe(Flag.withDefault("localhost")),
    port: Flag.integer("port").pipe(Flag.withDefault(3000))
  },
  files: Argument.string("files").pipe(Argument.variadic),
  force: Flag.boolean("force").pipe(Flag.withDescription("Force deployment"))
})

// Command with handler
const deployWithHandler = Command.make("deploy", {
  environment: Flag.string("env"),
  force: Flag.boolean("force")
}, (config) =>
  Effect.gen(function*() {
    yield* Console.log(`Starting deployment to ${config.environment}`)

    if (!config.force && config.environment === "production") {
      return yield* Effect.fail("Production deployments require --force flag")
    }

    yield* Console.log("Deployment completed successfully")
  }))
```

**Signature**

```ts
declare const make: { <Name extends string>(name: Name): Command<Name, {}, {}, never, never>; <Name extends string, const Config extends Command.Config>(name: Name, config: Config): Command<Name, Command.Config.Infer<Config>, {}, never, never>; <Name extends string, const Config extends Command.Config, R, E>(name: Name, config: Config, handler: (config: Command.Config.Infer<Config>) => Effect.Effect<void, E, R>): Command<Name, Command.Config.Infer<Config>, {}, E, Exclude<R, GlobalFlag.BuiltInSettingContext>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L451)

Since v4.0.0