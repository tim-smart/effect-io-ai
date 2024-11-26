# map

Transforms the value inside an effect by applying a function to it.

**Syntax**

```ts
const mappedEffect = pipe(myEffect, Effect.map(transformation))
// or
const mappedEffect = Effect.map(myEffect, transformation)
// or
const mappedEffect = myEffect.pipe(Effect.map(transformation))
```

**Details**

`map` takes a function and applies it to the value contained within an
effect, creating a new effect with the transformed value.

It's important to note that effects are immutable, meaning that the original
effect is not modified. Instead, a new effect is returned with the updated
value.

To import and use `map` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.map
```

**Example**

```ts
// Title: Adding a Service Charge
import { pipe, Effect } from "effect"

const addServiceCharge = (amount: number) => amount + 1

const fetchTransactionAmount = Effect.promise(() => Promise.resolve(100))

const finalAmount = pipe(fetchTransactionAmount, Effect.map(addServiceCharge))

Effect.runPromise(finalAmount).then(console.log)
// Output: 101
```

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <E, R>(self: Effect<A, E, R>) => Effect<B, E, R>
  <A, E, R, B>(self: Effect<A, E, R>, f: (a: A) => B): Effect<B, E, R>
}
```
