Package: `effect`<br />
Module: `Command`<br />

## Command.annotateMerge

Merges a Context of annotations into a command.

**Signature**

```ts
declare const annotateMerge: { <I>(annotations: Context.Context<I>): <Name extends string, Input, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>) => Command<Name, Input, ContextInput, E, R>; <Name extends string, Input, E, R, ContextInput, I>(self: Command<Name, Input, ContextInput, E, R>, annotations: Context.Context<I>): Command<Name, Input, ContextInput, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L966)

Since v4.0.0