Package: `effect`<br />
Module: `Layer`<br />

## Layer.suspend

Lazily constructs a layer. This is useful to avoid infinite recursion when
creating layers that refer to themselves.

**Signature**

```ts
declare const suspend: <RIn, E, ROut>(evaluate: LazyArg<Layer<ROut, E, RIn>>) => Layer<ROut, E, RIn>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L736)

Since v2.0.0