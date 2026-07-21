Package: `effect`<br />
Module: `Schema`<br />

## Schema.$ReadonlySet

Type-level representation returned by `ReadonlySet`.

**Signature**

```ts
export interface $ReadonlySet<Value extends Constraint> extends
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L9998)

Since v4.0.0