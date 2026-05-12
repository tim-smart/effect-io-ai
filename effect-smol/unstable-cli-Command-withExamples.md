Package: `effect`<br />
Module: `Command`<br />

## Command.withExamples

Sets usage examples for a command.

Examples are exposed in structured `HelpDoc` data and rendered by the
default formatter in an `EXAMPLES` section.

**Example**

```ts
import { Command } from "effect/unstable/cli"

const login = Command.make("login").pipe(
  Command.withExamples([
    { command: "myapp login", description: "Log in with browser OAuth" },
    { command: "myapp login --token sbp_abc123", description: "Log in with a token" }
  ])
)
```

**Signature**

```ts
declare const withExamples: { (examples: ReadonlyArray<Command.Example>): <const Name extends string, Input, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>) => Command<Name, Input, ContextInput, E, R>; <const Name extends string, Input, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>, examples: ReadonlyArray<Command.Example>): Command<Name, Input, ContextInput, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L1024)

Since v4.0.0