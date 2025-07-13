Package: `effect`<br />
Module: `Effect`<br />

## Effect.addFinalizer

Ensures a finalizer is added to the scope of the calling effect, guaranteeing
it runs when the scope is closed.

**Details**

This function adds a finalizer that will execute whenever the scope of the
effect is closed, regardless of whether the effect succeeds, fails, or is
interrupted. The finalizer receives the `Exit` value of the effect's scope,
allowing it to react differently depending on how the effect concludes.

Finalizers are a reliable way to manage resource cleanup, ensuring that
resources such as file handles, network connections, or database transactions
are properly closed even in the event of an unexpected interruption or error.

Finalizers operate in conjunction with Effect's scoped resources. If an
effect with a finalizer is wrapped in a scope, the finalizer will execute
automatically when the scope ends.

**Example** (Adding a Finalizer on Success)

```ts
import { Effect, Console } from "effect"

//      ┌─── Effect<string, never, Scope>
//      ▼
const program = Effect.gen(function* () {
  yield* Effect.addFinalizer((exit) =>
    Console.log(`Finalizer executed. Exit status: ${exit._tag}`)
  )
  return "some result"
})

// Wrapping the effect in a scope
//
//      ┌─── Effect<string, never, never>
//      ▼
const runnable = Effect.scoped(program)

Effect.runPromiseExit(runnable).then(console.log)
// Output:
// Finalizer executed. Exit status: Success
// { _id: 'Exit', _tag: 'Success', value: 'some result' }
```

**Example** (Adding a Finalizer on Failure)

```ts
import { Effect, Console } from "effect"

//      ┌─── Effect<never, string, Scope>
//      ▼
const program = Effect.gen(function* () {
  yield* Effect.addFinalizer((exit) =>
    Console.log(`Finalizer executed. Exit status: ${exit._tag}`)
  )
  return yield* Effect.fail("Uh oh!")
})

// Wrapping the effect in a scope
//
//      ┌─── Effect<never, string, never>
//      ▼
const runnable = Effect.scoped(program)

Effect.runPromiseExit(runnable).then(console.log)
// Output:
// Finalizer executed. Exit status: Failure
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: { _id: 'Cause', _tag: 'Fail', failure: 'Uh oh!' }
// }
```

**Example** (Adding a Finalizer on Interruption)

```ts
import { Effect, Console } from "effect"

//      ┌─── Effect<never, never, Scope>
//      ▼
const program = Effect.gen(function* () {
  yield* Effect.addFinalizer((exit) =>
    Console.log(`Finalizer executed. Exit status: ${exit._tag}`)
  )
  return yield* Effect.interrupt
})

// Wrapping the effect in a scope
//
//      ┌─── Effect<never, never, never>
//      ▼
const runnable = Effect.scoped(program)

Effect.runPromiseExit(runnable).then(console.log)
// Output:
// Finalizer executed. Exit status: Failure
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: {
//     _id: 'Cause',
//     _tag: 'Interrupt',
//     fiberId: {
//       _id: 'FiberId',
//       _tag: 'Runtime',
//       id: 0,
//       startTimeMillis: ...
//     }
//   }
// }
```

**See**

- `onExit` for attaching a finalizer directly to an effect.

**Signature**

```ts
declare const addFinalizer: <X, R>(finalizer: (exit: Exit.Exit<unknown, unknown>) => Effect<X, never, R>) => Effect<void, never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5681)

Since v2.0.0