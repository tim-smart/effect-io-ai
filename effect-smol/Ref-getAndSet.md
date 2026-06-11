Package: `effect`<br />
Module: `Ref`<br />

## Ref.getAndSet

Gets the current value of the Ref, sets it to the specified value, and returns the previous value atomically.

**When to use**

Use to replace a plain `Ref` value while returning the previous value.

**Example** (Replacing a value atomically)

```ts
import { Effect, Ref } from "effect"

const program = Effect.gen(function*() {
  const ref = yield* Ref.make("initial")

  // Get current value and set new value atomically
  const previous = yield* Ref.getAndSet(ref, "updated")
  console.log(previous) // "initial"

  const current = yield* Ref.get(ref)
  console.log(current) // "updated"
})
```

**See**

- `set` for setting without returning the previous value
- `getAndUpdate` for deriving the new value from the previous value

**Signature**

```ts
declare const getAndSet: (<A>(value: A) => (self: Ref<A>) => Effect.Effect<A>) & (<A>(self: Ref<A>, value: A) => Effect.Effect<A>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ref.ts#L283)

Since v2.0.0