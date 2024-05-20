# repeatN

The `repeatN` function returns a new effect that repeats the specified effect a
given number of times or until the first failure. The repeats are in addition
to the initial execution, so `Effect.repeatN(action, 1)` executes `action` once
initially and then repeats it one additional time if it succeeds.

To import and use `repeatN` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.repeatN
```

**Example**

```ts
import { Effect, Console } from "effect"

const action = Console.log("success")
const program = Effect.repeatN(action, 2)

Effect.runPromise(program)
```

**Signature**

```ts
export declare const repeatN: {
  (n: number): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
  <A, E, R>(self: Effect<A, E, R>, n: number): Effect<A, E, R>
}
```
