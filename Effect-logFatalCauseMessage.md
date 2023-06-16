# logFatalCauseMessage

Logs the specified message and cause at the fatal log level.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const logFatalCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Effect<never, never, void>
```
