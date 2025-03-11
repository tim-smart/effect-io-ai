## loop

Repeatedly executes a loop with a state, collecting results or discarding
them based on configuration.

**Details**

This function performs an effectful loop, starting with an initial state and
iterating as long as the `while` condition evaluates to `true`, similar to a
`while` loop in JavaScript.

```ts
let state = initial
const result = []

while (options.while(state)) {
  result.push(options.body(state)) // Perform the effectful operation
  state = options.step(state) // Update the state
}

return result
```

During each iteration, the `step` function updates the state, and the `body`
effect is executed.

The results of the body effect can be collected in an array or discarded
based on the `discard` option.

**Discarding Intermediate Results**

- If `discard` is `false` or not provided, the intermediate results are
  collected into an array and returned as the final result.
- If `discard` is `true`, the intermediate results are ignored, and the
  effect returns `void`.

**When to Use**

This is useful for implementing loops where you need to perform effectful
computations repeatedly, such as processing items in a list, generating
values, or performing iterative updates.

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

// Effect.runPromise(result).then(console.log)
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

// Effect.runPromise(result).then(console.log)
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
declare const loop: { <A, B extends A, C, E, R>(initial: A, options: { readonly while: Refinement<A, B>; readonly step: (b: B) => A; readonly body: (b: B) => Effect<C, E, R>; readonly discard?: false | undefined; }): Effect<Array<C>, E, R>; <A, C, E, R>(initial: A, options: { readonly while: (a: A) => boolean; readonly step: (a: A) => A; readonly body: (a: A) => Effect<C, E, R>; readonly discard?: false | undefined; }): Effect<Array<C>, E, R>; <A, B extends A, C, E, R>(initial: A, options: { readonly while: Refinement<A, B>; readonly step: (b: B) => A; readonly body: (b: B) => Effect<C, E, R>; readonly discard: true; }): Effect<void, E, R>; <A, C, E, R>(initial: A, options: { readonly while: (a: A) => boolean; readonly step: (a: A) => A; readonly body: (a: A) => Effect<C, E, R>; readonly discard: true; }): Effect<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L9855)

Since v2.0.0