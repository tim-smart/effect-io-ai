# orElse

Executes this layer and returns its output, if it succeeds, but otherwise
executes the specified layer.

To import and use `orElse` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.orElse
undefined

**Signature**

```ts
export declare const orElse: {
  <A2, E2, R2>(that: LazyArg<Layer<A2, E2, R2>>): <A, E, R>(self: Layer<A, E, R>) => Layer<A & A2, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(self: Layer<A, E, R>, that: LazyArg<Layer<A2, E2, R2>>): Layer<A & A2, E | E2, R | R2>
}
```
