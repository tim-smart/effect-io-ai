# unsafeToNanos

Get the duration in nanoseconds as a bigint.

If the duration is infinite, it throws an error.

To import and use `unsafeToNanos` from the "Duration" module:

ts
import \* as Duration from "effect/Duration"
// Can be accessed like this
Duration.unsafeToNanos
undefined

**Signature**

```ts
export declare const unsafeToNanos: (self: DurationInput) => bigint
```
