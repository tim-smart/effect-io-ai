Package: `effect`<br />
Module: `Effect`<br />

## Effect.repeatN

Repeats an effect a specified number of times or until the first failure.

**Details**

This function executes an effect initially and then repeats it the specified
number of times, as long as it succeeds. For example, calling
`repeatN(action, 2)` will execute `action` once initially and then repeat it
two additional times if there are no failures.

If the effect fails during any repetition, the failure is returned, and no
further repetitions are attempted.

**When to Use**

This function is useful for tasks that need to be retried a fixed number of
times or for performing repeated actions without requiring a schedule.

**Example**

```ts
import { Effect, Console } from "effect"

const action = Console.log("success")
const program = Effect.repeatN(action, 2)

Effect.runPromise(program)
```

**Signature**

```ts
declare const repeatN: { (n: number): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(self: Effect<A, E, R>, n: number): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10230)

Since v2.0.0