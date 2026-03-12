Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.isFuture

Checks if a `DateTime` is in the future compared to the current time.

This is an effectful operation that uses the current time from the `Clock` service.

**Example**

```ts
import { DateTime, Effect } from "effect"

const program = Effect.gen(function*() {
  const futureDate = DateTime.add(yield* DateTime.now, { hours: 1 })
  const isFuture = yield* DateTime.isFuture(futureDate)
  console.log(isFuture) // true
})
```

**Signature**

```ts
declare const isFuture: (self: DateTime) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L1129)

Since v3.6.0