Package: `effect`<br />
Module: `Command`<br />

## Command.annotate

Adds a custom annotation to a command.

**When to use**

Use to attach one command-scoped metadata value under a `Context.Key`,
especially for consumers such as custom help formatters.

**Details**

Annotations are stored on the command's annotation context and flow into
generated help document annotations.

**Gotchas**

Adding the same `Context.Key` again replaces the earlier value.

**See**

- `annotateMerge` for merging an existing annotation context

**Signature**

```ts
declare const annotate: { <I, S>(service: Context.Key<I, S>, value: NoInfer<S>): <Name extends string, Input, E, R, ContextInput>(self: Command<Name, Input, ContextInput, E, R>) => Command<Name, Input, ContextInput, E, R>; <Name extends string, Input, E, R, ContextInput, I, S>(self: Command<Name, Input, ContextInput, E, R>, service: Context.Key<I, S>, value: NoInfer<S>): Command<Name, Input, ContextInput, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Command.ts#L1097)

Since v4.0.0