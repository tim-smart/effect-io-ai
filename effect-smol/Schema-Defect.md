Package: `effect`<br />
Module: `Schema`<br />

## Schema.Defect

Type-level representation of `Defect`.

**Signature**

```ts
export interface Defect extends decodeTo<Unknown, typeof Json> {
  readonly "Rebuild": Defect
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9226)

Since v3.10.0