Package: `effect`<br />
Module: `Layer`<br />

## Layer.syncContext

Lazily constructs a layer from the specified value, which must return one or more
services.

**Signature**

```ts
declare const syncContext: <A>(evaluate: LazyArg<Context.Context<A>>) => Layer<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L756)

Since v2.0.0