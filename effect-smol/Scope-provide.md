Package: `effect`<br />
Module: `Scope`<br />

## Scope.provide

Provides a `Scope` to an `Effect`, removing the `Scope` requirement from its context.
This allows you to run effects that require a scope by explicitly providing one.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Scope.extend`

**Example**

```ts
import { Console, Effect, Scope } from "effect"

// An effect that requires a Scope
const program = Effect.gen(function*() {
  const scope = yield* Scope.Scope
  yield* Scope.addFinalizer(scope, Console.log("Cleanup"))
  yield* Console.log("Working...")
})

// Provide a scope to the program
const withScope = Effect.gen(function*() {
  const scope = yield* Scope.make()
  yield* Scope.provide(scope)(program)
})
```

**Signature**

```ts
declare const provide: { (value: Scope): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, Scope>>; <A, E, R>(self: Effect<A, E, R>, value: Scope): Effect<A, E, Exclude<R, Scope>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L294)

Since v4.0.0