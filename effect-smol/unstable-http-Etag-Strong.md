Package: `effect`<br />
Module: `Etag`<br />

## Etag.Strong

Strong HTTP entity tag.

**Details**

The `value` is the raw tag value without the surrounding quotes.

**Signature**

```ts
export interface Strong {
  readonly _tag: "Strong"
  readonly value: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Etag.ts#L51)

Since v4.0.0