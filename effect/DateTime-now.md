# now

Get the current time using the `Clock` service and convert it to a `DateTime`.

To import and use `now` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.now
undefined

**Example**

```ts
import { DateTime, Effect } from "effect"

Effect.gen(function* () {
  const now = yield* DateTime.now
})
```

**Signature**

```ts
export declare const now: Effect.Effect<Utc, never, never>
```
