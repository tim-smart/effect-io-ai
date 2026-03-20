Package: `effect`<br />
Module: `Schema`<br />

## Schema.instanceOf

The type produced by `instanceOf` — a declaration schema that validates class instances.

**See**

- `instanceOf` for the constructor

**Signature**

```ts
export interface instanceOf<T, Iso = T> extends declare<T, Iso> {
  readonly "~rebuild.out": this
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4805)

Since v4.0.0