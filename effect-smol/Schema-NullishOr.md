Package: `effect`<br />
Module: `Schema`<br />

## Schema.NullishOr

Schema type for `S | null | undefined`. Produced by `NullishOr`.

**Signature**

```ts
export interface NullishOr<S extends Top> extends Union<readonly [S, Null, Undefined]> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3592)

Since v4.0.0