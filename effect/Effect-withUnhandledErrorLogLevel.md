# withUnhandledErrorLogLevel

Decides wether child fibers will report or not unhandled errors via the logger

To import and use `withUnhandledErrorLogLevel` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.withUnhandledErrorLogLevel
undefined

**Signature**

```ts
export declare const withUnhandledErrorLogLevel: {
  (level: Option.Option<LogLevel>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
  <A, E, R>(self: Effect<A, E, R>, level: Option.Option<LogLevel>): Effect<A, E, R>
}
```
