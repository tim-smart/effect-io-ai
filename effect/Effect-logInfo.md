Package: `effect`<br />
Module: `Effect`<br />

## Effect.logInfo

Logs messages at the INFO log level.

**Details**

This function logs messages at the INFO level, suitable for general
application events or operational messages. INFO logs are shown by default
and are commonly used for highlighting normal, non-error operations.

**Signature**

```ts
declare const logInfo: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10755)

Since v2.0.0