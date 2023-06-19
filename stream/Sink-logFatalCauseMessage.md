# logFatalCauseMessage

Logs the specified message and `Cause` at the fatal log level.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const logFatalCauseMessage: <E>(
  message: string,
  cause: Cause.Cause<E>
) => Sink<never, never, unknown, never, void>
```
