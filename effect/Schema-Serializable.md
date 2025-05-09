Package: `effect`<br />
Module: `Schema`<br />

## Schema.Serializable

The `Serializable` trait allows objects to define their own schema for
serialization.

**Signature**

```ts
export interface Serializable<A, I, R> {
  readonly [symbolSerializable]: Schema<A, I, R>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L10144)

Since v3.10.0