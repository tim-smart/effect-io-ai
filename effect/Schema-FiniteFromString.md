Package: `effect`<br />
Module: `Schema`<br />

## Schema.FiniteFromString

Type-level representation of `FiniteFromString`.

**Signature**

```ts
export interface FiniteFromString extends decodeTo<Finite, String> {
  readonly "Rebuild": FiniteFromString
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L11555)

Since v4.0.0