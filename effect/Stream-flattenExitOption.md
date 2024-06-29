# flattenExitOption

Unwraps `Exit` values that also signify end-of-stream by failing with `None`.

For `Exit` values that do not signal end-of-stream, prefer:

```ts
stream.mapZIO(ZIO.done(_))
```

To import and use `flattenExitOption` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.flattenExitOption
```

**Signature**

```ts
export declare const flattenExitOption: <A, E2, E, R>(
  self: Stream<Exit.Exit<A, Option.Option<E2>>, E, R>
) => Stream<A, E2 | E, R>
```
