# bindTo

The "do simulation" in Effect allows you to write code in a more declarative style, similar to the "do notation" in other programming languages. It provides a way to define variables and perform operations on them using functions like `bind` and `let`.

Here's how the do simulation works:

1. Start the do simulation using the `Do` value
2. Within the do simulation scope, you can use the `bind` function to define variables and bind them to `Effect` values
3. You can accumulate multiple `bind` statements to define multiple variables within the scope
4. Inside the do simulation scope, you can also use the `let` function to define variables and bind them to simple values

To import and use `bindTo` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.bindTo
```

**Example**

```ts
import { Effect, pipe } from "effect"

const result = pipe(
  Effect.Do,
  Effect.bind("x", () => Effect.succeed(2)),
  Effect.bind("y", () => Effect.succeed(3)),
  Effect.let("sum", ({ x, y }) => x + y)
)
assert.deepStrictEqual(Effect.runSync(result), { x: 2, y: 3, sum: 5 })
```

**Signature**

```ts
export declare const bindTo: {
  <N extends string>(name: N): <A, E, R>(self: Effect<A, E, R>) => Effect<{ [K in N]: A }, E, R>
  <A, E, R, N extends string>(self: Effect<A, E, R>, name: N): Effect<{ [K in N]: A }, E, R>
}
```
