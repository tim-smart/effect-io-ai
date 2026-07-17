Package: `effect`<br />
Module: `Command`<br />

## Command.withHidden

Hides a subcommand from parent help output, shell completions, and
"did you mean?" suggestions while keeping it fully invocable by exact name.

**When to use**

Use when experimental or internal subcommands should be accepted but not advertised on
the public CLI surface.

**Example** (Hiding a subcommand)

```ts
import { Command } from "effect/unstable/cli"

// `experimental` still runs when invoked as `mycli experimental`,
// but it does not appear under SUBCOMMANDS in `mycli --help`.
const experimental = Command.make("experimental").pipe(
  Command.withHidden
)

const root = Command.make("mycli").pipe(
  Command.withSubcommands([experimental])
)
```

**Signature**

```ts
declare const withHidden: <const Name extends string, Input, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>) => Command<Name, Input, ContextInput, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Command.ts#L1070)

Since v4.0.0