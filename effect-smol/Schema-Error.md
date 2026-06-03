Package: `effect`<br />
Module: `Schema`<br />

## Schema.Error

Type-level representation of `Error`.

**Signature**

```ts
export interface Error extends instanceOf<globalThis.Error> {
  readonly "Rebuild": Error
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9028)

Since v4.0.0