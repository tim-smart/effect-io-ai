Package: `effect`<br />
Module: `Schema`<br />

## Schema.UniqueArray

Type-level representation returned by `UniqueArray`.

**Signature**

```ts
export interface UniqueArray<S extends Top> extends $Array<S> {
  readonly "Rebuild": UniqueArray<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4379)

Since v4.0.0