# orElse

Switch to another sink in case of failure

To import and use `orElse` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.orElse
```

**Signature**

```ts
export declare const orElse: {
  <R2, E2, In2, L2, Z2>(
    that: LazyArg<Sink<R2, E2, In2, L2, Z2>>
  ): <R, E, In, L, Z>(self: Sink<R, E, In, L, Z>) => Sink<R2 | R, E2 | E, In & In2, L2 | L, Z2 | Z>
  <R, E, In, L, Z, R2, E2, In2, L2, Z2>(
    self: Sink<R, E, In, L, Z>,
    that: LazyArg<Sink<R2, E2, In2, L2, Z2>>
  ): Sink<R | R2, E | E2, In & In2, L | L2, Z | Z2>
}
```
