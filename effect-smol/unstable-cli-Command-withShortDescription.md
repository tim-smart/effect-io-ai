Package: `effect`<br />
Module: `Command`<br />

## Command.withShortDescription

Sets a short description for a command.

Short descriptions are used when listing subcommands in help output and
shell completions. If no short description is provided, the full
`description` is used as a fallback.

**Signature**

```ts
declare const withShortDescription: { (shortDescription: string): <const Name extends string, Input, E, R>(self: Command<Name, Input, E, R>) => Command<Name, Input, E, R>; <const Name extends string, Input, E, R>(self: Command<Name, Input, E, R>, shortDescription: string): Command<Name, Input, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L755)

Since v4.0.0