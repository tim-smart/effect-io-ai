Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.now

Get the current time using the `Clock` service and convert it to a `DateTime`.

**Example** (Getting the current DateTime)

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function*() {
  const now = yield* DateTime.nowAsDate
  console.log(now instanceof Date) // true
})
```

**Signature**

```ts
declare const now: Effect.Effect<Utc, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L773)

Since v3.6.0