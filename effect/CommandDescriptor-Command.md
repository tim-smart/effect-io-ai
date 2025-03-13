Package: `@effect/cli`<br />
Module: `CommandDescriptor`<br />

## CommandDescriptor.Command

A `Command` represents a command in a command-line application.

Every command-line application will have at least one command: the
application itself. Other command-line applications may support multiple
commands.

**Signature**

```ts
export interface Command<A> extends Command.Variance<A>, Pipeable {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/CommandDescriptor.ts#L45)

Since v1.0.0