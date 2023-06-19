# suspend

Returns a lazily constructed sink that may require effects for its
creation.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const suspend: <R, E, In, L, Z>(evaluate: LazyArg<Sink<R, E, In, L, Z>>) => Sink<R, E, In, L, Z>
```
