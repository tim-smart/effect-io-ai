Package: `effect`<br />
Module: `References`<br />

## References.CurrentLoggers

Reference containing the set of loggers currently used by Effect logging
operations.

**When to use**

Use to inspect or provide the complete set of loggers used by Effect logging
in the current context.

**Details**

The default set contains the built-in default logger and tracer logger.
Providing this reference changes which `Logger` instances receive log entries
in the current context.

**Signature**

```ts
declare const CurrentLoggers: Context.Reference<ReadonlySet<Logger<unknown, any>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L776)

Since v4.0.0