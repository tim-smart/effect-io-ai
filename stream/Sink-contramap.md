# contramap

Transforms this sink's input elements.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const contramap: (<In0, In>(
  f: (input: In0) => In
) => <R, E, L, Z>(self: Sink<R, E, In, L, Z>) => Sink<R, E, In0, L, Z>) &
  (<R, E, L, Z, In0, In>(self: Sink<R, E, In, L, Z>, f: (input: In0) => In) => Sink<R, E, In0, L, Z>)
```
