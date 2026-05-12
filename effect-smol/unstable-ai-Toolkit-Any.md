Package: `effect`<br />
Module: `Toolkit`<br />

## Toolkit.Any

Represents any `Toolkit` instance, used for generic constraints.

**Signature**

```ts
export interface Any {
  readonly [TypeId]: typeof TypeId
  readonly tools: Record<string, Tool.Any>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Toolkit.ts#L161)

Since v1.0.0