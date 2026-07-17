Package: `effect`<br />
Module: `Transferable`<br />

## Transferable.Transferable

Schema wrapper whose encode path can record transferables with a `Collector`
while preserving the wrapped schema's decoded type.

**Signature**

```ts
export interface Transferable<S extends Schema.Top> extends
  Schema.decodeTo<
    Schema.toType<S["Rebuild"]>,
    S["Rebuild"]
  >
{}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Transferable.ts#L117)

Since v4.0.0