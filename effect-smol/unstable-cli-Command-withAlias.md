Package: `effect`<br />
Module: `Command`<br />

## Command.withAlias

Sets an alias for a command.

Aliases are accepted as alternate subcommand names during parsing and are
shown in help output as `name, alias`.

**Signature**

```ts
declare const withAlias: { (alias: string): <const Name extends string, Input, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>) => Command<Name, Input, ContextInput, E, R>; <const Name extends string, Input, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>, alias: string): Command<Name, Input, ContextInput, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L920)

Since v4.0.0