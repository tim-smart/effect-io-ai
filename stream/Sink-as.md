# as

Replaces this sink's result with the provided value.

To import and use `as` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.as
```

**Signature**

```ts
export declare const as: {
  <Z2>(z: Z2): <R, E, In, L, Z>(self: Sink<R, E, In, L, Z>) => Sink<R, E, In, L, Z2>
  <R, E, In, L, Z, Z2>(self: Sink<R, E, In, L, Z>, z: Z2): Sink<R, E, In, L, Z2>
}
```
