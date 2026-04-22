Package: `effect`<br />
Module: `Schema`<br />

## Schema.UndefinedOr

Companion type for `S | undefined`. Produced by `UndefinedOr`.

**Signature**

```ts
export interface UndefinedOr<S extends Top> extends Union<readonly [S, Undefined]> {
  readonly "Rebuild": UndefinedOr<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3594)

Since v4.0.0