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
  <L, L2>(f: (leftover: L) => L2): <A, In, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In, L2, E, R>
  <A, In, L, E, R, L2>(self: Sink<A, In, L, E, R>, f: (leftover: L) => L2): Sink<A, In, L2, E, R>
}
```
