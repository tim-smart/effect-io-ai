# identity

The identity pipeline, which does not modify streams in any way.

To import and use `identity` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.identity
```

**Signature**

```ts
export declare const identity: <R, E, A>() => Stream<R, E, A>
```
