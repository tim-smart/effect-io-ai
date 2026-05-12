Package: `effect`<br />
Module: `Effect`<br />

## Effect.gen

Provides a way to write effectful code using generator functions, simplifying
control flow and error handling.

**When to Use**

`gen` allows you to write code that looks and behaves like synchronous
code, but it can handle asynchronous tasks, errors, and complex control flow
(like loops and conditions). It helps make asynchronous code more readable
and easier to manage.

The generator functions work similarly to `async/await` but with more
explicit control over the execution of effects. You can `yield*` values from
effects and return the final result at the end.

**Example**

```ts
import { Data, Effect } from "effect"

class DiscountRateError extends Data.TaggedError("DiscountRateError")<{}> {}

const addServiceCharge = (amount: number) => amount + 1

const applyDiscount = (
  total: number,
  discountRate: number
): Effect.Effect<number, DiscountRateError> =>
  discountRate === 0
    ? Effect.fail(new DiscountRateError())
    : Effect.succeed(total - (total * discountRate) / 100)

const fetchTransactionAmount = Effect.promise(() => Promise.resolve(100))

const fetchDiscountRate = Effect.promise(() => Promise.resolve(5))

export const program = Effect.gen(function*() {
  const transactionAmount = yield* fetchTransactionAmount
  const discountRate = yield* fetchDiscountRate
  const discountedAmount = yield* applyDiscount(
    transactionAmount,
    discountRate
  )
  const finalAmount = addServiceCharge(discountedAmount)
  return `Final amount to charge: ${finalAmount}`
})
```

**Signature**

```ts
declare const gen: { <Eff extends Effect<any, any, any>, AEff>(f: () => Generator<Eff, AEff, never>): Effect<AEff, [Eff] extends [never] ? never : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E : never, [Eff] extends [never] ? never : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R : never>; <Self, Eff extends Effect<any, any, any>, AEff>(options: { readonly self: Self; }, f: (this: Self) => Generator<Eff, AEff, never>): Effect<AEff, [Eff] extends [never] ? never : [Eff] extends [Effect<infer _A, infer E, infer _R>] ? E : never, [Eff] extends [never] ? never : [Eff] extends [Effect<infer _A, infer _E, infer R>] ? R : never>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1501)

Since v2.0.0