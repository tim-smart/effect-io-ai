# map

Returns a new layer whose output is mapped by the specified function.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const map: {
  <A, B>(f: (context: Context.Context<A>) => Context.Context<B>): <R, E>(self: Layer<R, E, A>) => Layer<R, E, B>
  <R, E, A, B>(self: Layer<R, E, A>, f: (context: Context.Context<A>) => Context.Context<B>): Layer<R, E, B>
}
```
