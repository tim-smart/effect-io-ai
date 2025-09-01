Package: `effect`<br />
Module: `Schema`<br />

## Schema.Redacted

A transformation that transform a `Schema<A, I, R>` into a
`RedactedFromSelf<A>`.

**Signature**

```ts
declare const Redacted: <Value extends Schema.Any>(value: Value) => Redacted<Value>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5874)

Since v3.10.0