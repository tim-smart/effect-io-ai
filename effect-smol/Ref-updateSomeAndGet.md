Package: `effect`<br />
Module: `Ref`<br />

## Ref.updateSomeAndGet

Atomically updates the value of the Ref using the given partial function and returns the current value.

If the partial function returns `Option.some`, the Ref is updated with the new value.
If it returns `Option.none`, the Ref is left unchanged.
Returns the current value of the Ref after the potential update.

**Example**

```ts
import { Effect, Ref } from "effect"
import * as Option from "effect/Option"

const program = Effect.gen(function*() {
  const counter = yield* Ref.make(10)

  // Only update if value is greater than 5
  const result1 = yield* Ref.updateSomeAndGet(
    counter,
    (n) => n > 5 ? Option.some(n / 2) : Option.none()
  )
  console.log(result1) // 5 (updated and returned)

  // Try to update again with same condition
  const result2 = yield* Ref.updateSomeAndGet(
    counter,
    (n) => n > 5 ? Option.some(n / 2) : Option.none()
  )
  console.log(result2) // 5 (unchanged because 5 is not > 5)
})
```

**Signature**

```ts
declare const updateSomeAndGet: (<A>(pf: (a: A) => Option.Option<A>) => (self: Ref<A>) => Effect.Effect<A>) & (<A>(self: Ref<A>, pf: (a: A) => Option.Option<A>) => Effect.Effect<A>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L649)

Since v2.0.0