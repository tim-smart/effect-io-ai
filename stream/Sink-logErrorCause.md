# logErrorCause

Logs the specified `Cause` at the error log level.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const logErrorCause: <E>(cause: Cause.Cause<E>) => Sink<never, never, unknown, never, void>
```
