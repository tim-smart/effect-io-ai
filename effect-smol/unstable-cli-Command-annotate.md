Package: `effect`<br />
Module: `Command`<br />

## Command.annotate

Adds a custom annotation to a command.

**Signature**

```ts
declare const annotate: { <I, S>(service: ServiceMap.Key<I, S>, value: NoInfer<S>): <Name extends string, Input, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>) => Command<Name, Input, ContextInput, E, R>; <Name extends string, Input, E, R, ContextInput, I, S>(self: Command<Name, Input, ContextInput, E, R>, service: ServiceMap.Key<I, S>, value: NoInfer<S>): Command<Name, Input, ContextInput, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L939)

Since v4.0.0