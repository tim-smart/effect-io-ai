# logErrorCauseMessage

Logs the specified message and `Cause` at the error log level.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const logErrorCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Stream<never, never, void>
```
