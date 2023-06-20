# flattenExit

Flattens `Exit` values. `Exit.Failure` values translate to stream
failures while `Exit.Success` values translate to stream elements.

To import and use `flattenExit` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.flattenExit
```

**Signature**

```ts
export declare const flattenExit: <R, E, E2, A>(self: Stream<R, E, Exit.Exit<E2, A>>) => Stream<R, E | E2, A>
```
