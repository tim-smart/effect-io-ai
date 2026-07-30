Package: `effect`<br />
Module: `Effect`<br />

## Effect.as

Replaces the value inside an effect with a constant value.

**Details**

This function allows you to ignore the original value inside an effect and
replace it with a constant value.

**When to Use**

It is useful when you no longer need the value produced by an effect but want
to ensure that the effect completes successfully with a specific constant
result instead. For instance, you can replace the value produced by a
computation with a predefined value, ignoring what was calculated before.

**Example** (Replacing a Value)

```ts
import { pipe, Effect } from "effect"

// Replaces the value 5 with the constant "new value"
const program = pipe(Effect.succeed(5), Effect.as("new value"))

Effect.runPromise(program).then(console.log)
// Output: "new value"
```

**Signature**

```ts
declare const as: { <B>(value: B): <A, E, R>(self: Effect<A, E, R>) => Effect<B, E, R>; <A, E, R, B>(self: Effect<A, E, R>, value: B): Effect<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5042)

Since v2.0.0