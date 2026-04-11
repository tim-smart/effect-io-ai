Package: `effect`<br />
Module: `Schema`<br />

## Schema.NullishOr

Companion type for `S | null | undefined`. Produced by `NullishOr`.

**Signature**

```ts
export interface NullishOr<S extends Top> extends Union<readonly [S, Null, Undefined]> {
  readonly "Rebuild": NullishOr<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3610)

Since v4.0.0