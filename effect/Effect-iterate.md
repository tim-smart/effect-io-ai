Package: `effect`<br />
Module: `Effect`<br />

## Effect.iterate

Repeatedly updates a state through an effectful operation until a condition
is no longer met.

**Details**

This function provides a way to implement effectful loops, similar to a
`while` loop in JavaScript.

```ts
let result = initial

while (options.while(result)) {
  result = options.body(result)
}

return result
```

It starts with an initial state, checks a
condition (`while`), and executes a body operation to update the state if the
condition evaluates to `true`. The process repeats until the condition
returns `false`.

The state is passed between iterations, allowing the body operation to modify
it dynamically. The final state after the loop ends is returned as the result
of the effect.

**When to Use**

This is particularly useful for scenarios where looping logic involves
asynchronous or side-effectful operations, such as polling or iterative
computations that depend on external factors.

**Example** (Effectful Iteration)

```ts
import { Effect } from "effect"

const result = Effect.iterate(
  // Initial result
  1,
  {
    // Condition to continue iterating
    while: (result) => result <= 5,
    // Operation to change the result
    body: (result) => Effect.succeed(result + 1)
  }
)

Effect.runPromise(result).then(console.log)
// Output: 6
```

**Signature**

```ts
declare const iterate: { <A, B extends A, R, E>(initial: A, options: { readonly while: Refinement<A, B>; readonly body: (b: B) => Effect<A, E, R>; }): Effect<A, E, R>; <A, R, E>(initial: A, options: { readonly while: Predicate<A>; readonly body: (a: A) => Effect<A, E, R>; }): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L9940)

Since v2.0.0