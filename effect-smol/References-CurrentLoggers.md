Package: `effect`<br />
Module: `References`<br />

## References.CurrentLoggers

Reference containing the set of loggers currently used by Effect logging
operations.

**Details**
Providing this reference changes which `Logger` instances receive log entries
in the current context.

**Signature**

```ts
declare const CurrentLoggers: Context.Reference<ReadonlySet<Logger<unknown, any>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L574)

Since v4.0.0