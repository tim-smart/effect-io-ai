# sequence

Returns an `IterableIterator` which yields the sequence of `Date`s that match the `Cron` instance.

To import and use `sequence` from the "Cron" module:

```ts
import * as Cron from "effect/Cron"
// Can be accessed like this
Cron.sequence
```

**Signature**

```ts
export declare const sequence: (cron: Cron, now?: DateTime.DateTime.Input) => IterableIterator<Date>
```
