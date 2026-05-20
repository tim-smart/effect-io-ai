Package: `effect`<br />
Module: `Command`<br />

## Command.Command.Config

Configuration object for defining command flags, arguments, and nested structures.

**Details**

`Command.Config` can contain individual flags and arguments using `Param`
types, nested configuration objects for organization, and arrays of
parameters for repeated elements.

**Example** (Configuring command input)

```ts
import { Argument, Flag } from "effect/unstable/cli"
import type { Command as CliCommand } from "effect/unstable/cli"

// Simple flat configuration
const simpleConfig: CliCommand.Command.Config = {
  name: Flag.string("name"),
  age: Flag.integer("age"),
  file: Argument.string("file")
}

// Nested configuration for organization
const nestedConfig: CliCommand.Command.Config = {
  user: {
    name: Flag.string("name"),
    email: Flag.string("email")
  },
  server: {
    host: Flag.string("host"),
    port: Flag.integer("port")
  }
}
```

**Signature**

```ts
export interface Config {
    readonly [key: string]:
      | Param.Param<Param.ParamKind, any>
      | ReadonlyArray<Param.Param<Param.ParamKind, any> | Config>
      | Config
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L240)

Since v4.0.0