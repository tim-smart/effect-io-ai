# tick

A stream that emits Unit values spaced by the specified duration.

To import and use `tick` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.tick
```

**Signature**

```ts
export declare const tick: (interval: Duration.DurationInput) => Stream<never, never, void>
```
