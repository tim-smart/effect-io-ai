# loop

The `Effect.loop` function allows you to repeatedly change the state based on an `step` function until a condition given by the `while` function is evaluated to `true`:

```ts
Effect.loop(initial, options: { while, step, body })
```

It collects all intermediate states in an array and returns it as the final result.

We can think of Effect.loop as equivalent to a while loop in JavaScript:

```ts
let state = initial
const result = []

while (options.while(state)) {
  result.push(options.body(state))
  state = options.step(state)
}

return result
```

To import and use `loop` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.loop
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
