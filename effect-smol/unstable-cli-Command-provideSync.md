Package: `effect`<br />
Module: `Command`<br />

## Command.provideSync

Provides the handler of a command with the implementation of a service that
optionally depends on the command-line input to be constructed.

**Signature**

```ts
declare const provideSync: { <I, S, Input>(service: Context.Key<I, S>, implementation: S | ((input: Input) => S)): <const Name extends string, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>) => Command<Name, Input, ContextInput, E, Exclude<R, I>>; <const Name extends string, Input, E, R, ContextInput, I, S>(self: Command<Name, Input, ContextInput, E, R>, service: Context.Key<I, S>, implementation: S | ((input: Input) => S)): Command<Name, Input, ContextInput, E, Exclude<R, I>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L1100)

Since v4.0.0