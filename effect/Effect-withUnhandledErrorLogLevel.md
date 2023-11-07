# withUnhandledErrorLogLevel

Decides wether child fibers will report or not unhandled errors via the logger

To import and use `withUnhandledErrorLogLevel` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.withUnhandledErrorLogLevel
```

**Signature**

```ts
export declare const withUnhandledErrorLogLevel: {
  (level: Option.Option<LogLevel>): <R, E, B>(self: Effect<R, E, B>) => Effect<R, E, B>
  <R, E, B>(self: Effect<R, E, B>, level: Option.Option<LogLevel>): Effect<R, E, B>
}
```
