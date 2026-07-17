Package: `effect`<br />
Module: `Command`<br />

## Command.withGlobalFlags

Adds global flags to a command scope.

**Details**

Declared global flags apply to the command and all of its descendants.

**Signature**

```ts
declare const withGlobalFlags: { <const GlobalFlags extends ReadonlyArray<GlobalFlag.GlobalFlag<any>>>(globalFlags: GlobalFlags): <Name extends string, Input, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>) => Command<Name, Input, ContextInput, E, Exclude<R, ExtractGlobalFlagContext<GlobalFlags>>>; <Name extends string, Input, E, R, ContextInput, const GlobalFlags extends ReadonlyArray<GlobalFlag.GlobalFlag<any>>>(self: Command<Name, Input, ContextInput, E, R>, globalFlags: GlobalFlags): Command<Name, Input, ContextInput, E, Exclude<R, ExtractGlobalFlagContext<GlobalFlags>>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Command.ts#L905)

Since v4.0.0