Package: `effect`<br />
Module: `Layer`<br />

## Layer.scopedContext

Constructs a layer from the specified scoped effect, which must return one
or more services.

**Signature**

```ts
declare const scopedContext: <A, E, R>(effect: Effect.Effect<Context.Context<A>, E, R>) => Layer<A, E, Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L694)

Since v2.0.0