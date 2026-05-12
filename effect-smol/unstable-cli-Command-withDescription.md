Package: `effect`<br />
Module: `Command`<br />

## Command.withDescription

Sets the description for a command.

Descriptions provide users with information about what the command does
when they view help documentation.

**Example**

```ts
import { Console, Effect } from "effect"
import { Command, Flag } from "effect/unstable/cli"

const deploy = Command.make("deploy", {
  environment: Flag.string("env")
}, (config) =>
  Effect.gen(function*() {
    yield* Console.log(`Deploying to ${config.environment}`)
  })).pipe(
    Command.withDescription("Deploy the application to a specified environment")
  )
```

**Signature**

```ts
declare const withDescription: { (description: string): <const Name extends string, Input, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>) => Command<Name, Input, ContextInput, E, R>; <const Name extends string, Input, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>, description: string): Command<Name, Input, ContextInput, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L894)

Since v4.0.0