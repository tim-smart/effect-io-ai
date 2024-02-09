# map

Returns a new layer whose output is mapped by the specified function.

To import and use `map` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.map
```

**Signature**

```ts
export declare const map: {
  <A, B>(f: (context: Context.Context<A>) => Context.Context<B>): <R, E>(self: Layer<A, E, R>) => Layer<B, E, R>
  <R, E, A, B>(self: Layer<A, E, R>, f: (context: Context.Context<A>) => Context.Context<B>): Layer<B, E, R>
}
```
