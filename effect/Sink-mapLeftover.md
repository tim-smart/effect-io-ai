# mapLeftover

Transforms the leftovers emitted by this sink using `f`.

To import and use `mapLeftover` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.mapLeftover
```

**Signature**

```ts
export declare const mapLeftover: {
  <L, L2>(f: (leftover: L) => L2): <R, E, In, Z>(self: Sink<R, E, In, L, Z>) => Sink<R, E, In, L2, Z>
  <R, E, In, Z, L, L2>(self: Sink<R, E, In, L, Z>, f: (leftover: L) => L2): Sink<R, E, In, L2, Z>
}
```
