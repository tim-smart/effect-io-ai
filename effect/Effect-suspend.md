# suspend

Creates an `Effect` that defers the creation of another effect until it is needed.

Useful for lazy evaluation, handling circular dependencies, or avoiding eager execution in recursive functions.

To import and use `suspend` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.suspend
```

**Example**

```ts
import { Effect } from "effect"

// Handling recursion without stack overflow
const fibonacci = (n: number): Effect.Effect<number> =>
  n < 2
    ? Effect.succeed(1)
    : Effect.zipWith(
        Effect.suspend(() => fibonacci(n - 1)),
        Effect.suspend(() => fibonacci(n - 2)),
        (a, b) => a + b
      )

console.log(Effect.runSync(fibonacci(10))) // Output: 89
```

**Signature**

```ts
export declare const suspend: <A, E, R>(effect: LazyArg<Effect<A, E, R>>) => Effect<A, E, R>
```
