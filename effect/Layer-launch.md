Package: `effect`<br />
Module: `Layer`<br />

## Layer.launch

Builds this layer and uses it until it is interrupted. This is useful when
your entire application is a layer, such as an HTTP server.

**Signature**

```ts
declare const launch: <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Effect.Effect<never, E, RIn>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L472)

Since v2.0.0