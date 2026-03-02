Package: `effect`<br />
Module: `Command`<br />

## Command.withGlobalFlags

Declares global flags for a command scope.

Declared global flags apply to the command and all of its descendants.

**Signature**

```ts
declare const withGlobalFlags: { <const GlobalFlags extends ReadonlyArray<GlobalFlag.GlobalFlag<any>>>(globalFlags: GlobalFlags): <Name extends string, Input, E, R>(self: Command<Name, Input, E, R>) => Command<Name, Input, E, Exclude<R, ExtractGlobalFlagContext<GlobalFlags>>>; <Name extends string, Input, E, R, const GlobalFlags extends ReadonlyArray<GlobalFlag.GlobalFlag<any>>>(self: Command<Name, Input, E, R>, globalFlags: GlobalFlags): Command<Name, Input, E, Exclude<R, ExtractGlobalFlagContext<GlobalFlags>>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L674)

Since v4.0.0