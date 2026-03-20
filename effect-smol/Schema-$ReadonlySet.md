Package: `effect`<br />
Module: `Schema`<br />

## Schema.$ReadonlySet

Schema type for `ReadonlySet`.

**Signature**

```ts
export interface $ReadonlySet<Value extends Top> extends
  declareConstructor<
    globalThis.ReadonlySet<Value["Type"]>,
    globalThis.ReadonlySet<Value["Encoded"]>,
    readonly [Value],
    ReadonlySetIso<Value>
  >
{
  readonly value: Value
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8050)

Since v4.0.0