Package: `effect`<br />
Module: `Command`<br />

## Command.Command.Config

Configuration object for defining command flags, arguments, and nested structures.

Command.Config allows you to specify:
- Individual flags and arguments using Param types
- Nested configuration objects for organization
- Arrays of parameters for repeated elements

**Example**

```ts
import { Argument, Flag } from "effect/unstable/cli"
import type * as CliCommand from "effect/unstable/cli/Command"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L179)

Since v4.0.0