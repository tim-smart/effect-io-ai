# identity

The identity pipeline, which does not modify streams in any way.

To import and use `identity` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.identity
undefined

**Signature**

```ts
export declare const identity: <A, E = never, R = never>() => Stream<A, E, R>
```
