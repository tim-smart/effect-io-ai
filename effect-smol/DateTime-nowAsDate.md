Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.nowAsDate

Get the current time using the `Clock` service and convert it to a `DateTime`.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L608)

Since v3.6.0