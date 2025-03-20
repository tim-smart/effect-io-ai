Package: `effect`<br />
Module: `Layer`<br />

## Layer.succeedContext

Constructs a layer from the specified value, which must return one or more
services.

**Signature**

```ts
declare const succeedContext: <A>(context: Context.Context<A>) => Layer<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L725)

Since v2.0.0