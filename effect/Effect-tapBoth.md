# tapBoth

Inspects both success and failure outcomes of an effect, performing different actions based on the result.

To import and use `tapBoth` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.tapBoth
```

**Example**

```ts
import { Effect, Random, Console } from "effect"

// Simulate an effect that might fail
const task = Effect.filterOrFail(
  Random.nextRange(-1, 1),
  (n) => n >= 0,
  () => "random number is negative"
)

// Define an effect that logs both success and failure outcomes of the 'task'
const tapping = Effect.tapBoth(task, {
  onFailure: (error) => Console.log(`failure: ${error}`),
  onSuccess: (randomNumber) => Console.log(`random number: ${randomNumber}`)
})

Effect.runFork(tapping)
// Example Output:
// failure: random number is negative
```

**Signature**

```ts
export declare const tapBoth: {
  <E, X, E2, R2, A, X1, E3, R3>(options: {
    readonly onFailure: (e: NoInfer<E>) => Effect<X, E2, R2>
    readonly onSuccess: (a: NoInfer<A>) => Effect<X1, E3, R3>
  }): <R>(self: Effect<A, E, R>) => Effect<A, E | E2 | E3, R2 | R3 | R>
  <A, E, R, X, E2, R2, X1, E3, R3>(
    self: Effect<A, E, R>,
    options: { readonly onFailure: (e: E) => Effect<X, E2, R2>; readonly onSuccess: (a: A) => Effect<X1, E3, R3> }
  ): Effect<A, E | E2 | E3, R | R2 | R3>
}
```
