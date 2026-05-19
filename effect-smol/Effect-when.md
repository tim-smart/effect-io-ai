Package: `effect`<br />
Module: `Effect`<br />

## Effect.when

Conditionally runs an effect based on the result of an effectful boolean
condition.

**Details**

The condition effect is evaluated first. If it succeeds with `true`, the
source effect is run and its success value is wrapped in `Option.some`. If it
succeeds with `false`, the source effect is skipped and the result is
`Option.none`. If the condition effect fails, that failure is preserved.

**When to Use**

Use this when an effectful check decides whether to run another effect while
representing the skipped case explicitly.

**Example** (Usage)

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

- `when` for conditional execution with a boolean condition.

**Signature**

```ts
declare const when: { <E2 = never, R2 = never>(condition: Effect<boolean, E2, R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<Option<A>, E | E2, R | R2>; <A, E, R, E2 = never, R2 = never>(self: Effect<A, E, R>, condition: Effect<boolean, E2, R2>): Effect<Option<A>, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4808)

Since v2.0.0