## discard

Replaces the layer's output with `void` and includes the layer only for its
side-effects.

**Signature**

```ts
declare const discard: <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Layer<never, E, RIn>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L264)

Since v2.0.0