Package: `effect`<br />
Module: `DevTools`<br />

## DevTools.layer

Layer that installs the devtools tracer over a WebSocket connection using the
global WebSocket constructor, defaulting to `ws://localhost:34437`.

**Signature**

```ts
declare const layer: (url?: string) => Layer.Layer<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DevTools.ts#L52)

Since v4.0.0