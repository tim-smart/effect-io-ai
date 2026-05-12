Package: `effect`<br />
Module: `Command`<br />

## Command.withSharedFlags

Adds flags that are inherited by subcommands.

Shared flags are available to this command's handler and to descendant
handlers via `yield* parentCommand`. Shared flags are accepted both before
and after a selected subcommand name (npm-style).

**Signature**

```ts
declare const withSharedFlags: { <const SharedFlags extends Command.FlagConfig>(sharedFlags: SharedFlags): <Name extends string, Input, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>) => Command<Name, Simplify<Input & Command.Config.Infer<SharedFlags>>, Simplify<ContextInput & Command.Config.Infer<SharedFlags>>, E, R>; <Name extends string, Input, E, R, ContextInput, const SharedFlags extends Command.FlagConfig>(self: Command<Name, Input, ContextInput, E, R>, sharedFlags: SharedFlags): Command<Name, Simplify<Input & Command.Config.Infer<SharedFlags>>, Simplify<ContextInput & Command.Config.Infer<SharedFlags>>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L726)

Since v4.0.0