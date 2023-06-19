# logTraceCauseMessage

Logs the specified message and cause at the trace log level.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const logTraceCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Effect<never, never, void>
```
