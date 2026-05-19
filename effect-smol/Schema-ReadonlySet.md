Package: `effect`<br />
Module: `Schema`<br />

## Schema.ReadonlySet

Creates a schema that validates a `ReadonlySet` whose values conform to the
provided element schema.

**Signature**

```ts
declare const ReadonlySet: <Value extends Top>(value: Value) => $ReadonlySet<Value>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8787)

Since v3.10.0