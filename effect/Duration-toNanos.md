# toNanos

Get the duration in nanoseconds as a bigint.

If the duration is infinite, returns `Option.none()`

To import and use `toNanos` from the "Duration" module:

```ts
import * as Duration from "effect/Duration"
// Can be accessed like this
Duration.toNanos
```

**Signature**

```ts
export declare const toNanos: (self: DurationInput) => Option.Option<bigint>
```
