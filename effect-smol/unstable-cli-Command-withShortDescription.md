Package: `effect`<br />
Module: `Command`<br />

## Command.withShortDescription

Sets a short description for a command.

Short descriptions are used when listing subcommands in help output and
shell completions. If no short description is provided, the full
`description` is used as a fallback.

**Signature**

```ts
declare const withShortDescription: { (shortDescription: string): <const Name extends string, Input, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>) => Command<Name, Input, ContextInput, E, R>; <const Name extends string, Input, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>, shortDescription: string): Command<Name, Input, ContextInput, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L917)

Since v4.0.0