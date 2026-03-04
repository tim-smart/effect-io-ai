Package: `effect`<br />
Module: `Command`<br />

## Command.provide

Provides the handler of a command with the services produced by a layer
that optionally depends on the command-line input to be created.

**Example**

```ts
import { Effect, FileSystem, PlatformError } from "effect"
import { Command, Flag } from "effect/unstable/cli"

const deploy = Command.make("deploy", {
  env: Flag.string("env")
}, (config) =>
  Effect.gen(function*() {
    const fs = yield* FileSystem.FileSystem
    // Use fs...
  })).pipe(
    // Provide FileSystem based on the --env flag
    Command.provide((config) =>
      config.env === "local"
        ? FileSystem.layerNoop({})
        : FileSystem.layerNoop({
          access: () =>
            Effect.fail(
              PlatformError.badArgument({
                module: "FileSystem",
                method: "access"
              })
            )
        })
    )
  )
```

**Signature**

```ts
declare const provide: { <Input, LR, LE, LA>(layer: Layer.Layer<LA, LE, LR> | ((input: Input) => Layer.Layer<LA, LE, LR>), options?: { readonly local?: boolean | undefined; } | undefined): <const Name extends string, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>) => Command<Name, Input, ContextInput, E | LE, Exclude<R, LA> | LR>; <const Name extends string, Input, E, R, ContextInput, LA, LE, LR>(self: Command<Name, Input, ContextInput, E, R>, layer: Layer.Layer<LA, LE, LR> | ((input: Input) => Layer.Layer<LA, LE, LR>), options?: { readonly local?: boolean | undefined; } | undefined): Command<Name, Input, ContextInput, E | LE, Exclude<R, LA> | LR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L1067)

Since v4.0.0