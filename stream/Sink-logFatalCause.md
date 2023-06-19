# logFatalCause

Logs the specified `Cause` at the fatal log level.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const logFatalCause: <E>(cause: Cause.Cause<E>) => Sink<never, never, unknown, never, void>
```
