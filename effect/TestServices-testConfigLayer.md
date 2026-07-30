Package: `effect`<br />
Module: `TestServices`<br />

## TestServices.testConfigLayer

Constructs a new `TestConfig` service with the specified settings.

**Signature**

```ts
declare const testConfigLayer: (params: { readonly repeats: number; readonly retries: number; readonly samples: number; readonly shrinks: number; }) => Layer.Layer<TestConfig.TestConfig>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestServices.ts#L347)

Since v2.0.0