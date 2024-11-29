# mapError

Returns a layer with its error channel mapped using the specified function.

To import and use `mapError` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.mapError
undefined

**Signature**

```ts
export declare const mapError: {
  <E, E2>(f: (error: E) => E2): <A, R>(self: Layer<A, E, R>) => Layer<A, E2, R>
  <A, E, R, E2>(self: Layer<A, E, R>, f: (error: E) => E2): Layer<A, E2, R>
}
```
