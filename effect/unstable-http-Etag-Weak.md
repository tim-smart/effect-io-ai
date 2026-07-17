Package: `effect`<br />
Module: `Etag`<br />

## Etag.Weak

Weak HTTP entity tag.

**Details**

The `value` is the raw tag value without the surrounding quotes or `W/` prefix.

**Signature**

```ts
export interface Weak {
  readonly _tag: "Weak"
  readonly value: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Etag.ts#L36)

Since v4.0.0