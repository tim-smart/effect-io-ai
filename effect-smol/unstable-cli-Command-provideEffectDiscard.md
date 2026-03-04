Package: `effect`<br />
Module: `Command`<br />

## Command.provideEffectDiscard

Allows for execution of an effect, which optionally depends on command-line
input to be created, prior to executing the handler of a command.

**Signature**

```ts
declare const provideEffectDiscard: { <_, Input, E2, R2>(effect: Effect.Effect<_, E2, R2> | ((input: Input) => Effect.Effect<_, E2, R2>)): <const Name extends string, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>) => Command<Name, Input, ContextInput, E | E2, R | R2>; <const Name extends string, Input, E, R, ContextInput, _, E2, R2>(self: Command<Name, Input, ContextInput, E, R>, effect: Effect.Effect<_, E2, R2> | ((input: Input) => Effect.Effect<_, E2, R2>)): Command<Name, Input, ContextInput, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L1161)

Since v4.0.0