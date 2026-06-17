Package: `effect`<br />
Module: `Effect`<br />

## Effect.as

Replaces the value inside an effect with a constant value.

**When to use**

Use to replace a successful value with a constant while preserving failures
and requirements.

**Details**

`as` allows you to ignore the original value inside an effect and
replace it with a new constant value.

**Example** (Replacing a success value)

```ts
import { Effect, pipe } from "effect"

// Replaces the value 5 with the constant "new value"
const program = pipe(Effect.succeed(5), Effect.as("new value"))

Effect.runPromise(program).then(console.log)
// Output: "new value"
```

**See**

- `map` for deriving the replacement value from the success value
- `asVoid` for replacing the success value with `void`

**Signature**

```ts
declare const as: { <B>(value: B): <A, E, R>(self: Effect<A, E, R>) => Effect<B, E, R>; <A, E, R, B>(self: Effect<A, E, R>, value: B): Effect<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2386)

Since v2.0.0