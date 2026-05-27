Package: `effect`<br />
Module: `Schema`<br />

## Schema.$ReadonlySet

Type-level representation of a `ReadonlySet` schema whose values are validated
by the provided element schema.

**When to use**

Use to name or constrain the schema type produced by `ReadonlySet` when
generic code needs to retain the element schema type.

**See**

- `ReadonlySet` for constructing this schema type
- `ReadonlySetIso` for the array representation used by this schema's ISO

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9274)

Since v4.0.0