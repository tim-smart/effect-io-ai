# dimap

Transforms both inputs and result of this sink using the provided
functions.

To import and use `dimap` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.dimap
```

**Signature**

```ts
export declare const dimap: {
  <In0, In, Z, Z2>(f: (input: In0) => In, g: (z: Z) => Z2): <R, E, L>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R, E, In0, L, Z2>
  <R, E, L, In0, In, Z, Z2>(self: Sink<R, E, In, L, Z>, f: (input: In0) => In, g: (z: Z) => Z2): Sink<R, E, In0, L, Z2>
}
```