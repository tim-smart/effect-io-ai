Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.now

Get the current time using the `Clock` service and convert it to a `DateTime`.

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function* () {
  const now = yield* DateTime.now
})
```

**Signature**

```ts
declare const now: Effect.Effect<Utc, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L490)

Since v3.6.0