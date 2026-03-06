Package: `effect`<br />
Module: `Effect`<br />

## Effect.as

Replaces the value inside an effect with a constant value.

`as` allows you to ignore the original value inside an effect and
replace it with a new constant value.

**Example**

```ts
// Title: Replacing a Value
import { Effect, pipe } from "effect"

// Replaces the value 5 with the constant "new value"
const program = pipe(Effect.succeed(5), Effect.as("new value"))

Effect.runPromise(program).then(console.log)
// Output: "new value"
```

**Signature**

```ts
declare const as: { <B>(value: B): <A, E, R>(self: Effect<A, E, R>) => Effect<B, E, R>; <A, E, R, B>(self: Effect<A, E, R>, value: B): Effect<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2471)

Since v2.0.0