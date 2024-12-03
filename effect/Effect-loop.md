# loop

Repeatedly updates a state using a `step` function until a condition, defined
by the `while` function, becomes `false`. It collects the intermediate states
in an array and returns them as the final result. The loop executes effectful
operations at each iteration.

This function is similar to a `while` loop in JavaScript, with the addition
of effectful computations:

```ts
let state = initial
const result = []

while (options.while(state)) {
  result.push(options.body(state)) // Perform the effectful operation
  state = options.step(state) // Update the state
}

return result
```

**Discarding Intermediate Results**

If the `discard` option is set to `true`, the intermediate results are
discarded, and the final result will be `void`.

To import and use `loop` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.loop
```

**Example**

```ts
// Title: Looping with Collected Results
import { Effect } from "effect"

// A loop that runs 5 times, collecting each iteration's result
const result = Effect.loop(
  // Initial state
  1,
  {
    // Condition to continue looping
    while: (state) => state <= 5,
    // State update function
    step: (state) => state + 1,
    // Effect to be performed on each iteration
    body: (state) => Effect.succeed(state)
  }
)

Effect.runPromise(result).then(console.log)
// Output: [1, 2, 3, 4, 5]
```

**Example**

```ts
// Title: Loop with Discarded Results
import { Effect, Console } from "effect"

const result = Effect.loop(
  // Initial state
  1,
  {
    // Condition to continue looping
    while: (state) => state <= 5,
    // State update function
    step: (state) => state + 1,
    // Effect to be performed on each iteration
    body: (state) => Console.log(`Currently at state ${state}`),
    // Discard intermediate results
    discard: true
  }
)

Effect.runPromise(result).then(console.log)
// Output:
// Currently at state 1
// Currently at state 2
// Currently at state 3
// Currently at state 4
// Currently at state 5
// undefined
```

**Signature**

```ts
export declare const loop: {
  <A, B extends A, C, E, R>(
    initial: A,
    options: {
      readonly while: Refinement<A, B>
      readonly step: (b: B) => A
      readonly body: (b: B) => Effect<C, E, R>
      readonly discard?: false | undefined
    }
  ): Effect<Array<C>, E, R>
  <A, C, E, R>(
    initial: A,
    options: {
      readonly while: (a: A) => boolean
      readonly step: (a: A) => A
      readonly body: (a: A) => Effect<C, E, R>
      readonly discard?: false | undefined
    }
  ): Effect<Array<C>, E, R>
  <A, B extends A, C, E, R>(
    initial: A,
    options: {
      readonly while: Refinement<A, B>
      readonly step: (b: B) => A
      readonly body: (b: B) => Effect<C, E, R>
      readonly discard: true
    }
  ): Effect<void, E, R>
  <A, C, E, R>(
    initial: A,
    options: {
      readonly while: (a: A) => boolean
      readonly step: (a: A) => A
      readonly body: (a: A) => Effect<C, E, R>
      readonly discard: true
    }
  ): Effect<void, E, R>
}
```
