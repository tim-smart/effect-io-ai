# filterInput

Filters the sink's input with the given predicate.

To import and use `filterInput` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.filterInput
```

**Signature**

```ts
export declare const filterInput: {
  <In, In1 extends In, In2 extends In1>(
    f: Refinement<In1, In2>
  ): <A, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In2, L, E, R>
  <In, In1 extends In>(f: Predicate<In1>): <A, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In1, L, E, R>
}
```
