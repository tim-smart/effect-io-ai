Package: `effect`<br />
Module: `Command`<br />

## Command.provideSync

Provides the handler of a command with the implementation of a service that
optionally depends on the command-line input to be constructed.

**Signature**

```ts
declare const provideSync: { <I, S, Input>(service: ServiceMap.Key<I, S>, implementation: S | ((input: Input) => S)): <const Name extends string, E, R>(self: Command<Name, Input, E, R>) => Command<Name, Input, E, Exclude<R, I>>; <const Name extends string, Input, E, R, I, S>(self: Command<Name, Input, E, R>, service: ServiceMap.Key<I, S>, implementation: S | ((input: Input) => S)): Command<Name, Input, E, Exclude<R, I>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L957)

Since v4.0.0