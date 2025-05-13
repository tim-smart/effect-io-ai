Package: `effect`<br />
Module: `Effect`<br />

## Effect.logFatal

Logs messages at the FATAL log level.

**Details**

This function logs messages at the FATAL level, suitable for reporting
critical errors that cause the application to terminate or stop functioning.
These logs are typically used for unrecoverable errors that require immediate
attention.

**Signature**

```ts
declare const logFatal: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10977)

Since v2.0.0