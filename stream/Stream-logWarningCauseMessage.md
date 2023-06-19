# logWarningCauseMessage

Logs the specified message and `Cause` at the warning log level.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const logWarningCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Stream<never, never, void>
```
