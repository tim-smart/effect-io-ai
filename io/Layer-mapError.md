# mapError

Returns a layer with its error channel mapped using the specified function.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const mapError: {
  <E, E2>(f: (error: E) => E2): <R, A>(self: Layer<R, E, A>) => Layer<R, E2, A>
  <R, E, A, E2>(self: Layer<R, E, A>, f: (error: E) => E2): Layer<R, E2, A>
}
```
