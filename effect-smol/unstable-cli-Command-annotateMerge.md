Package: `effect`<br />
Module: `Command`<br />

## Command.annotateMerge

Merges a ServiceMap of annotations into a command.

**Signature**

```ts
declare const annotateMerge: { <I>(annotations: ServiceMap.ServiceMap<I>): <Name extends string, Input, E, R>(self: Command<Name, Input, E, R>) => Command<Name, Input, E, R>; <Name extends string, Input, E, R, I>(self: Command<Name, Input, E, R>, annotations: ServiceMap.ServiceMap<I>): Command<Name, Input, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L823)

Since v4.0.0