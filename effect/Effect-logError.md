Package: `effect`<br />
Module: `Effect`<br />

## Effect.logError

Logs messages at the ERROR log level.

**Details**

This function logs messages at the ERROR level, suitable for reporting
application errors or failures. These logs are typically used for unexpected
issues that need immediate attention.

**Signature**

```ts
declare const logError: (...message: ReadonlyArray<any>) => Effect<void, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10784)

Since v2.0.0