Package: `effect`<br />
Module: `Effect`<br />

## Effect.when

Conditionally executes an effect based on a boolean condition.

**Details**

This function allows you to run an effect only if a given condition evaluates
to `true`. If the condition is `true`, the effect is executed, and its result
is wrapped in an `Option.some`. If the condition is `false`, the effect is
skipped, and the result is `Option.none`.

**When to Use**

This function is useful for scenarios where you need to dynamically decide
whether to execute an effect based on runtime logic, while also representing
the skipped case explicitly.

**Example**

```ts
import { Console, Effect } from "effect"

const shouldLog = true

const program = Effect.when(
  Console.log("Condition is true!"),
  Effect.succeed(shouldLog)
)

Effect.runPromise(program).then(console.log)
// Output: "Condition is true!"
// { _id: 'Option', _tag: 'Some', value: undefined }
```

**See**

- `whenEffect` for a version that allows the condition to be an effect.
- `unless` for a version that executes the effect when the condition is `false`.

**Signature**

```ts
declare const when: { <E2 = never, R2 = never>(condition: Effect<boolean, E2, R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<Option<A>, E | E2, R | R2>; <A, E, R, E2 = never, R2 = never>(self: Effect<A, E, R>, condition: Effect<boolean, E2, R2>): Effect<Option<A>, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5064)

Since v2.0.0