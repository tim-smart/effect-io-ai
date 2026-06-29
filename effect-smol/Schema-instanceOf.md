Package: `effect`<br />
Module: `Schema`<br />

## Schema.instanceOf

Type-level representation returned by `instanceOf`.

**Signature**

```ts
export interface instanceOf<T, Iso = T> extends declare<T, Iso> {
  readonly "Rebuild": instanceOf<T, Iso>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6283)

Since v3.10.0