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
  <A2, In2, L2, E2, R2>(
    that: LazyArg<Sink<A2, In2, L2, E2, R2>>
  ): <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A2 | A, In & In2, L2 | L, E2 | E, R2 | R>
  <A, In, L, E, R, A2, In2, L2, E2, R2>(
    self: Sink<A, In, L, E, R>,
    that: LazyArg<Sink<A2, In2, L2, E2, R2>>
  ): Sink<A | A2, In & In2, L | L2, E | E2, R | R2>
}
```
