# sync

Returns a schedule that repeats one time, producing the specified constant
value.

To import and use `sync` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.sync
```

**Signature**

```ts
export declare const sync: <A>(evaluate: LazyArg<A>) => Schedule<never, unknown, A>
```
