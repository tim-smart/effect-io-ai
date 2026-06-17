Package: `effect`<br />
Module: `Effect`<br />

## Effect.map

Transforms the value inside an effect by applying a function to it.

**When to use**

Use to transform an effect's success value with a function that returns a
plain value, producing a new effect without changing the original effect's
typed error or context requirements.

**Details**

`map` takes a function and applies it to the value contained within an
effect, creating a new effect with the transformed value.

It's important to note that effects are immutable, meaning that the original
effect is not modified. Instead, a new effect is returned with the updated
value.

**Example** (Choosing map syntax variants)

```ts
import { Effect, pipe } from "effect"

const myEffect = Effect.succeed(1)
const transformation = (n: number) => n + 1

const mappedWithPipe = pipe(myEffect, Effect.map(transformation))
const mappedWithDataFirst = Effect.map(myEffect, transformation)
const mappedWithMethod = myEffect.pipe(Effect.map(transformation))
```

**Example** (Adding a service charge)

```ts
import { Effect, pipe } from "effect"

const addServiceCharge = (amount: number) => amount + 1

const fetchTransactionAmount = Effect.promise(() => Promise.resolve(100))

const finalAmount = pipe(
  fetchTransactionAmount,
  Effect.map(addServiceCharge)
)

Effect.runPromise(finalAmount).then(console.log)
// Output: 101
```

**See**

- `mapError` for a version that operates on the error channel.
- `mapBoth` for a version that operates on both channels.
- `flatMap` or `andThen` for a version that can return a new effect.

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): <E, R>(self: Effect<A, E, R>) => Effect<B, E, R>; <A, E, R, B>(self: Effect<A, E, R>, f: (a: A) => B): Effect<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L2350)

Since v2.0.0