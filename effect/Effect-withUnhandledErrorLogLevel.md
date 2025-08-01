Package: `effect`<br />
Module: `Effect`<br />

## Effect.withUnhandledErrorLogLevel

Configures whether child fibers will log unhandled errors and at what log
level.

**Details**

This function allows you to control whether unhandled errors from child
fibers are logged and to specify the log level for these errors. By default,
unhandled errors are reported via the logger. However, using this function,
you can choose to suppress these logs by passing `Option.none` or adjust the
log level to a specific severity, such as `Error`, `Warning`, or `Info`.

This configuration is scoped to the effect it is applied to, meaning the
changes only apply to the child fibers created within that effect's context.
It is especially useful when you want to reduce noise in logs or prioritize
certain types of errors.

**Example**

```ts
import { Effect, Fiber, LogLevel, Option } from "effect"

const program = Effect.gen(function*() {
  const fiber = yield* Effect.fork(Effect.fail("Unhandled error!"))
  yield* Fiber.join(fiber)
})

Effect.runFork(program.pipe(Effect.withUnhandledErrorLogLevel(Option.some(LogLevel.Error))))
// Output:
// timestamp=... level=ERROR fiber=#1 message="Fiber terminated with an unhandled error" cause="Error: Unhandled error!"
```

**Signature**

```ts
declare const withUnhandledErrorLogLevel: { (level: Option.Option<LogLevel.LogLevel>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(self: Effect<A, E, R>, level: Option.Option<LogLevel.LogLevel>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11181)

Since v2.0.0