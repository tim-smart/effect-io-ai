Package: `effect`<br />
Module: `HelpDoc`<br />

## HelpDoc.SubcommandDoc

Documentation for a subcommand

**Example**

```ts
import { ServiceMap } from "effect"
import type { HelpDoc } from "effect/unstable/cli"

const deploySubcommand: HelpDoc.SubcommandDoc = {
  name: "deploy",
  alias: "d",
  shortDescription: "Deploy app",
  description: "Deploy the application to the cloud"
}

const buildSubcommand: HelpDoc.SubcommandDoc = {
  name: "build",
  alias: undefined,
  shortDescription: undefined,
  description: "Build the application for production"
}

// Used in parent command's help documentation
const mainCommandHelp: HelpDoc.HelpDoc = {
  description: "Cloud deployment tool",
  usage: "myapp <command> [options]",
  annotations: ServiceMap.empty(),
  flags: [],
  subcommands: [{
    group: undefined,
    commands: [deploySubcommand, buildSubcommand]
  }]
}
```

**Signature**

```ts
export interface SubcommandDoc {
  /**
   * Name of the subcommand
   */
  readonly name: string

  /**
   * Optional short alias for invoking the subcommand.
   */
  readonly alias: string | undefined

  /**
   * Optional short description of what the subcommand does.
   */
  readonly shortDescription: string | undefined

  /**
   * Brief description of what the subcommand does
   */
  readonly description: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HelpDoc.ts#L206)

Since v4.0.0