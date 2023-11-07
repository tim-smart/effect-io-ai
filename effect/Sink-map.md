# map

Transforms this sink's result.

To import and use `map` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.map
```

**Signature**

```ts
export declare const map: {
  <Z, Z2>(f: (z: Z) => Z2): <R, E, In, L>(self: Sink<R, E, In, L, Z>) => Sink<R, E, In, L, Z2>
  <R, E, In, L, Z, Z2>(self: Sink<R, E, In, L, Z>, f: (z: Z) => Z2): Sink<R, E, In, L, Z2>
}
```
