Package: `effect`<br />
Module: `Schema`<br />

## Schema.declare

Type-level representation returned by `declare`.

**Signature**

```ts
export interface declare<T, Iso = T> extends declareConstructor<T, T, readonly [], Iso> {
  readonly "Rebuild": declare<T, Iso>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L403)

Since v3.13.3