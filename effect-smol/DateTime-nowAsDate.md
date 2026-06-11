Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.nowAsDate

Gets the current time from the `Clock` service and returns it as a
JavaScript `Date`.

**Example** (Getting the current Date)

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function*() {
  const now = yield* DateTime.now
})
```

**Signature**

```ts
declare const nowAsDate: Effect.Effect<Date, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L857)

Since v3.14.0