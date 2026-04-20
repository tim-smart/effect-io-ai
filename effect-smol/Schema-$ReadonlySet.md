Package: `effect`<br />
Module: `Schema`<br />

## Schema.$ReadonlySet

Companion type for `ReadonlySet`.

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
  readonly "Rebuild": $ReadonlySet<Value>
  readonly value: Value
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8264)

Since v4.0.0