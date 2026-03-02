Package: `effect`<br />
Module: `HelpDoc`<br />

## HelpDoc.HelpDoc

Structured representation of help documentation for a command.
This data structure is independent of formatting, allowing for
different output formats (text, markdown, JSON, etc.).

**Example**

```ts
import { ServiceMap } from "effect"
import type * as HelpDoc from "effect/unstable/cli/HelpDoc"

const deployCommandHelp: HelpDoc.HelpDoc = {
  description: "Deploy your application to the cloud",
  usage: "myapp deploy [options] <target>",
  annotations: ServiceMap.empty(),
  flags: [
    {
      name: "verbose",
      aliases: ["-v"],
      type: "boolean",
      description: "Enable verbose logging",
      required: false
    },
    {
      name: "env",
      aliases: ["-e"],
      type: "string",
      description: "Target environment",
      required: true
    }
  ],
  args: [
    {
      name: "target",
      type: "string",
      description: "Deployment target (e.g., 'production', 'staging')",
      required: true,
      variadic: false
    }
  ]
}
```

**Signature**

```ts
export interface HelpDoc {
  /**
   * Brief description of what the command does
   */
  readonly description: string

  /**
   * Usage syntax showing how to invoke the command
   * Example: "myapp deploy [flags]"
   */
  readonly usage: string

  /**
   * List of available flags/options for this command
   */
  readonly flags: ReadonlyArray<FlagDoc>

  /**
   * Global flags available to all commands (e.g., --help, --version).
   */
  readonly globalFlags?: ReadonlyArray<FlagDoc>

  /**
   * Custom command annotations.
   */
  readonly annotations: ServiceMap.ServiceMap<never>

  /**
   * List of positional arguments for this command
   */
  readonly args?: ReadonlyArray<ArgDoc>

  /**
   * Optional list of subcommands if this is a parent command
   */
  readonly subcommands?: ReadonlyArray<SubcommandGroupDoc>

  /**
   * Optional concrete usage examples for the command
   */
  readonly examples?: ReadonlyArray<ExampleDoc>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HelpDoc.ts#L53)

Since v4.0.0