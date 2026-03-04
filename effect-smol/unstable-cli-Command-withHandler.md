Package: `effect`<br />
Module: `Command`<br />

## Command.withHandler

Adds or replaces the handler for a command.

**Example**

```ts
import { Console } from "effect"
import { Command, Flag } from "effect/unstable/cli"

// Command without initial handler
const greet = Command.make("greet", {
  name: Flag.string("name")
})

// Add handler later
const greetWithHandler = greet.pipe(
  Command.withHandler((config: { readonly name: string }) =>
    Console.log(`Hello, ${config.name}!`)
  )
)
```

**Signature**

```ts
declare const withHandler: { <A, R, E>(handler: (value: A) => Effect.Effect<void, E, R>): <Name extends string, XR, XE, ContextInput>(self: Command<Name, A, ContextInput, XE, XR>) => Command<Name, A, ContextInput, E, Exclude<R, GlobalFlag.BuiltInSettingContext>>; <Name extends string, A, XR, XE, R, E, ContextInput>(self: Command<Name, A, ContextInput, XE, XR>, handler: (value: A) => Effect.Effect<void, E, R>): Command<Name, A, ContextInput, E, Exclude<R, GlobalFlag.BuiltInSettingContext>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L486)

Since v4.0.0