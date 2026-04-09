Package: `effect`<br />
Module: `Command`<br />

## Command.provideEffect

Provides the handler of a command with the service produced by an effect
that optionally depends on the command-line input to be created.

**Signature**

```ts
declare const provideEffect: { <I, S, Input, R2, E2>(service: Context.Key<I, S>, effect: Effect.Effect<S, E2, R2> | ((input: Input) => Effect.Effect<S, E2, R2>)): <const Name extends string, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>) => Command<Name, Input, ContextInput, E | E2, Exclude<R, I> | R2>; <const Name extends string, Input, E, R, ContextInput, I, S, R2, E2>(self: Command<Name, Input, ContextInput, E, R>, service: Context.Key<I, S>, effect: Effect.Effect<S, E2, R2> | ((input: Input) => Effect.Effect<S, E2, R2>)): Command<Name, Input, ContextInput, E | E2, Exclude<R, I> | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L1131)

Since v4.0.0