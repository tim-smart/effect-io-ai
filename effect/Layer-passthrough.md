## passthrough

Returns a new layer that produces the outputs of this layer but also
passes through the inputs.

**Signature**

```ts
declare const passthrough: <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Layer<RIn | ROut, E, RIn>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L546)

Since v2.0.0