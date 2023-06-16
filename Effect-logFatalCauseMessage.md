# logFatalCauseMessage

Logs the specified message and cause at the fatal log level.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const logFatalCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Effect<never, never, void>
```
