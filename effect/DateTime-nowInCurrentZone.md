# nowInCurrentZone

Get the current time as a `DateTime.Zoned`, using the `CurrentTimeZone`.

To import and use `nowInCurrentZone` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.nowInCurrentZone
```

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function* () {
  // will use the "Europe/London" time zone
  const now = yield* DateTime.nowInCurrentZone
}).pipe(DateTime.withCurrentZoneNamed("Europe/London"))
```

**Signature**

```ts
export declare const nowInCurrentZone: Effect.Effect<Zoned, never, CurrentTimeZone>
```
