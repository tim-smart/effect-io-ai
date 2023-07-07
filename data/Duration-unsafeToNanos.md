# unsafeToNanos

Get the duration in nanoseconds as a bigint.

If the duration is infinite, it throws an error.

To import and use `unsafeToNanos` from the "Duration" module:

```ts
import * as Duration from '@effect/data/Duration'

// Can be accessed like this
Duration.unsafeToNanos
```

**Signature**

```ts
export declare const unsafeToNanos: (self: Duration) => bigint
```
