# sequence

Returns an `IterableIterator` which yields the sequence of `Date`s that match the `Cron` instance.

To import and use `sequence` from the "Cron" module:

ts
import \* as Cron from "effect/Cron"
// Can be accessed like this
Cron.sequence
undefined

**Signature**

```ts
export declare const sequence: (cron: Cron, now?: Date) => IterableIterator<Date>
```
