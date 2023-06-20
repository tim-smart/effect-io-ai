# map

Returns a new layer whose output is mapped by the specified function.

To import and use `map` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.map
```

**Signature**

```ts
export declare const map: {
  <A, B>(f: (context: Context.Context<A>) => Context.Context<B>): <R, E>(self: Layer<R, E, A>) => Layer<R, E, B>
  <R, E, A, B>(self: Layer<R, E, A>, f: (context: Context.Context<A>) => Context.Context<B>): Layer<R, E, B>
}
```
