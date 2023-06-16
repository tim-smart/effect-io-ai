# logErrorCauseMessage

Logs the specified message and cause at the error log level.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.logErrorCauseMessage`.

### Signature

```typescript
export declare const logErrorCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Effect<never, never, void>
```
