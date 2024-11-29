# as

Replaces the value inside an effect with a constant value.

`as` allows you to ignore the original value inside an effect and
replace it with a new constant value.

To import and use `as` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.as
undefined

**Example**

```ts
// Title: Replacing a Value
import { pipe, Effect } from "effect"

// Replaces the value 5 with the constant "new value"
const program = pipe(Effect.succeed(5), Effect.as("new value"))

Effect.runPromise(program).then(console.log)
// Output: "new value"
```

**Signature**

```ts
export declare const as: {
  <B>(value: B): <A, E, R>(self: Effect<A, E, R>) => Effect<B, E, R>
  <A, E, R, B>(self: Effect<A, E, R>, value: B): Effect<B, E, R>
}
```
