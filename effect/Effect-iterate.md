# iterate

Repeatedly updates a state through an effectful operation, running the `body`
effect to update the state in each iteration. It continues iterating as long
as the `while` condition evaluates to `true`.

This function works like a `while` loop in JavaScript but with effectful
operations:

```ts
let result = initial

while (options.while(result)) {
  result = options.body(result)
}

return result
```

To import and use `iterate` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.iterate
undefined

**Example**

```ts
// Title: Effectful Iteration
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
export declare const iterate: {
  <A, B extends A, R, E>(
    initial: A,
    options: { readonly while: Refinement<A, B>; readonly body: (b: B) => Effect<A, E, R> }
  ): Effect<A, E, R>
  <A, R, E>(
    initial: A,
    options: { readonly while: Predicate<A>; readonly body: (a: A) => Effect<A, E, R> }
  ): Effect<A, E, R>
}
```
