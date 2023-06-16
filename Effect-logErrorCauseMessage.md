# logErrorCauseMessage

Logs the specified message and cause at the error log level.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const logErrorCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Effect<never, never, void>
```
