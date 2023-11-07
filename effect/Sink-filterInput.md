# filterInput

Filters the sink's input with the given predicate.

To import and use `filterInput` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.filterInput
```

**Signature**

```ts
export declare const filterInput: {
  <In, In1 extends In, In2 extends In1>(f: Refinement<In1, In2>): <R, E, L, Z>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R, E, In2, L, Z>
  <In, In1 extends In>(f: Predicate<In1>): <R, E, L, Z>(self: Sink<R, E, In, L, Z>) => Sink<R, E, In1, L, Z>
}
```
