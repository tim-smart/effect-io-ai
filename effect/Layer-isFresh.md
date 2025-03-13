Package: `effect`<br />
Module: `Layer`<br />

## Layer.isFresh

Returns `true` if the specified `Layer` is a fresh version that will not be
shared, `false` otherwise.

**Signature**

```ts
declare const isFresh: <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L151)

Since v2.0.0