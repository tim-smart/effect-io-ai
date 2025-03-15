Package: `effect`<br />
Module: `Effect`<br />

## Effect.logWarning

Logs messages at the WARNING log level.

**Details**

This function logs messages at the WARNING level, suitable for highlighting
potential issues that are not errors but may require attention. These
messages indicate that something unexpected occurred or might lead to errors
in the future.

**Signature**

```ts
declare const logWarning: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10936)

Since v2.0.0