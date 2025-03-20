Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.nowAsDate

Get the current time using the `Clock` service.

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function* () {
  const now = yield* DateTime.nowAsDate
})
```

**Signature**

```ts
declare const nowAsDate: Effect.Effect<Date, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L442)

Since v3.14.0