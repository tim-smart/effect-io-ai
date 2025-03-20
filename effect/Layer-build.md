Package: `effect`<br />
Module: `Layer`<br />

## Layer.build

Builds a layer into a scoped value.

**Signature**

```ts
declare const build: <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Effect.Effect<Context.Context<ROut>, E, Scope.Scope | RIn>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L195)

Since v2.0.0