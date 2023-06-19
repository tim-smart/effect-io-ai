# suspend

Lazily constructs a layer. This is useful to avoid infinite recursion when
creating layers that refer to themselves.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const suspend: <RIn, E, ROut>(evaluate: LazyArg<Layer<RIn, E, ROut>>) => Layer<RIn, E, ROut>
```
