# logErrorCauseMessage

Logs the specified message and cause at the error log level.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const logErrorCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Effect<never, never, void>
```
