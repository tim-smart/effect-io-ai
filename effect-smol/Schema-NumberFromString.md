Package: `effect`<br />
Module: `Schema`<br />

## Schema.NumberFromString

Type-level representation of `NumberFromString`.

**Signature**

```ts
export interface NumberFromString extends decodeTo<Finite, String> {
  readonly "Rebuild": NumberFromString
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11175)

Since v3.10.0