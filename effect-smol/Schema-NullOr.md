Package: `effect`<br />
Module: `Schema`<br />

## Schema.NullOr

Schema type for `S | null`. Produced by `NullOr`.

**Signature**

```ts
export interface NullOr<S extends Top> extends Union<readonly [S, Null]> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3549)

Since v4.0.0