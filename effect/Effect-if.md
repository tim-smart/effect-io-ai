# if

Executes one of two effects based on a condition evaluated by an effectful predicate.

Use `if` to run one of two effects depending on whether the predicate effect
evaluates to `true` or `false`. If the predicate is `true`, the `onTrue` effect
is executed. If it is `false`, the `onFalse` effect is executed instead.

To import and use `if` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.if
```

**Example**

```ts
// Title: Simulating a Coin Flip
import { Effect, Random, Console } from "effect"

const flipTheCoin = Effect.if(Random.nextBoolean, {
  onTrue: () => Console.log("Head"), // Runs if the predicate is true
  onFalse: () => Console.log("Tail") // Runs if the predicate is false
})

// Effect.runFork(flipTheCoin)
```
