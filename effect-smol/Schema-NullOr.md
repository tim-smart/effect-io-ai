Package: `effect`<br />
Module: `Schema`<br />

## Schema.NullOr

Companion type for `S | null`. Produced by `NullOr`.

**Signature**

```ts
export interface NullOr<S extends Top> extends Union<readonly [S, Null]> {
  readonly "Rebuild": NullOr<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3566)

Since v4.0.0