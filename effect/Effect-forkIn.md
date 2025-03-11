## forkIn

Forks an effect in a specific scope, allowing finer control over its
execution.

**Details**

There are some cases where we need more fine-grained control, so we want to
fork a fiber in a specific scope. We can use the `Effect.forkIn` operator
which takes the target scope as an argument.

The fiber will be interrupted when the scope is closed.

**Example**

```ts
// Title: Forking a Fiber in a Specific Scope
//
// In this example, the child fiber is forked into the outerScope,
// allowing it to outlive the inner scope but still be terminated
// when the outerScope is closed.
//

import { Console, Effect, Schedule } from "effect"

// Child fiber that logs a message repeatedly every second
const child = Effect.repeat(
  Console.log("child: still running!"),
  Schedule.fixed("1 second")
)

const program = Effect.scoped(
  Effect.gen(function* () {
    yield* Effect.addFinalizer(() =>
      Console.log("The outer scope is about to be closed!")
    )

    // Capture the outer scope
    const outerScope = yield* Effect.scope

    // Create an inner scope
    yield* Effect.scoped(
      Effect.gen(function* () {
        yield* Effect.addFinalizer(() =>
          Console.log("The inner scope is about to be closed!")
        )
        // Fork the child fiber in the outer scope
        yield* Effect.forkIn(child, outerScope)
        yield* Effect.sleep("3 seconds")
      })
    )

    yield* Effect.sleep("5 seconds")
  })
)

// Effect.runFork(program)
// Output:
// child: still running!
// child: still running!
// child: still running!
// The inner scope is about to be closed!
// child: still running!
// child: still running!
// child: still running!
// child: still running!
// child: still running!
// child: still running!
// The outer scope is about to be closed!
```

**Signature**

```ts
declare const forkIn: { (scope: Scope.Scope): <A, E, R>(self: Effect<A, E, R>) => Effect<Fiber.RuntimeFiber<A, E>, never, R>; <A, E, R>(self: Effect<A, E, R>, scope: Scope.Scope): Effect<Fiber.RuntimeFiber<A, E>, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6277)

Since v2.0.0