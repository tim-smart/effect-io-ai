Package: `effect`<br />
Module: `Command`<br />

## Command.Command

Represents a CLI command with its configuration, handler, and metadata.

Commands are the core building blocks of CLI applications. They define:
- The command name and description
- Configuration including flags and arguments
- Handler function for execution
- Optional subcommands for hierarchical structures

**Example**

```ts
import { Console } from "effect"
import { Argument, Command, Flag } from "effect/unstable/cli"

// Simple command with no configuration
const version: Command.Command<"version", {}, never, never> = Command.make(
  "version"
)

// Command with flags and arguments
const deploy: Command.Command<
  "deploy",
  {
    readonly env: string
    readonly force: boolean
    readonly files: ReadonlyArray<string>
  },
  never,
  never
> = Command.make("deploy", {
  env: Flag.string("env"),
  force: Flag.boolean("force"),
  files: Argument.string("files").pipe(Argument.variadic())
})

// Command with handler
const greet = Command.make("greet", {
  name: Flag.string("name")
}, (config) => Console.log(`Hello, ${config.name}!`))
```

**Signature**

```ts
export interface Command<Name extends string, Input, E = never, R = never> extends
  Pipeable,
  Effect.Yieldable<
    Command<Name, Input, E, R>,
    Input,
    never,
    CommandContext<Name>
  >
{
  readonly [TypeId]: typeof TypeId

  /**
   * The name of the command.
   */
  readonly name: Name

  /**
   * An optional description of the command.
   */
  readonly description: string | undefined

  /**
   * An optional short description used when listing subcommands.
   */
  readonly shortDescription: string | undefined

  /**
   * An optional alias that can be used as a shorter command name.
   */
  readonly alias: string | undefined

  /**
   * Optional usage examples for the command.
   */
  readonly examples: ReadonlyArray<Command.Example>

  /**
   * The subcommands available under this command.
   */
  readonly subcommands: ReadonlyArray<{
    readonly group: string | undefined
    readonly commands: NonEmptyReadonlyArray<Command.Any>
  }>

  /**
   * Custom annotations associated with this command.
   */
  readonly annotations: ServiceMap.ServiceMap<never>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L78)

Since v4.0.0