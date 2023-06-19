# logTraceCauseMessage

Logs the specified message and `Cause` at the trace log level.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const logTraceCauseMessage: <E>(
  message: string,
  cause: Cause.Cause<E>
) => Sink<never, never, unknown, never, void>
```
