Package: `effect`<br />
Module: `Command`<br />

## Command.annotateMerge

Merges a Context of annotations into a command.

**When to use**

Use when you need to attach an already-built `Context.Context` of command
annotations.

**Details**

Merged annotations are stored on the command and exposed through generated
help document annotations.

**Gotchas**

If both contexts contain the same `Context.Key`, the incoming annotations
context wins.

**See**

- `annotate` for adding a single annotation without constructing a `Context`

**Signature**

```ts
declare const annotateMerge: { <I>(annotations: Context.Context<I>): <Name extends string, Input, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>) => Command<Name, Input, ContextInput, E, R>; <Name extends string, Input, E, R, ContextInput, I>(self: Command<Name, Input, ContextInput, E, R>, annotations: Context.Context<I>): Command<Name, Input, ContextInput, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Command.ts#L1124)

Since v4.0.0