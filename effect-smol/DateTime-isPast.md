Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.isPast

Checks effectfully if a `DateTime` is in the past compared to the current time.

**Details**

This is an effectful operation that uses the current time from the `Clock` service.

**Example** (Checking past DateTime values effectfully)

```ts
import { DateTime, Effect } from "effect"

const program = Effect.gen(function*() {
  const pastDate = DateTime.subtract(yield* DateTime.now, { hours: 1 })
  const isPast = yield* DateTime.isPast(pastDate)
  console.log(isPast) // true
})
```

**Signature**

```ts
declare const isPast: (self: DateTime) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1537)

Since v3.6.0