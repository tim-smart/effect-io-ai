# withUnhandledErrorLogLevel

Decides wether child fibers will report or not unhandled errors via the logger

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.withUnhandledErrorLogLevel`.

### Signature

```typescript
export declare const withUnhandledErrorLogLevel: {
  (level: Option.Option<LogLevel>): <R, E, B>(self: Effect<R, E, B>) => Effect<R, E, B>
  <R, E, B>(self: Effect<R, E, B>, level: Option.Option<LogLevel>): Effect<R, E, B>
}
```
