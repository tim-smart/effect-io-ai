Package: `effect`<br />
Module: `Schema`<br />

## Schema.UniqueArray

Companion type for an array with unique elements. Produced by `UniqueArray`.

**Signature**

```ts
export interface UniqueArray<S extends Top> extends $Array<S> {
  readonly "Rebuild": UniqueArray<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3338)

Since v4.0.0