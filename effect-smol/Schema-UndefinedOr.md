Package: `effect`<br />
Module: `Schema`<br />

## Schema.UndefinedOr

Type-level representation returned by `UndefinedOr`.

**Signature**

```ts
export interface UndefinedOr<S extends Top> extends Union<readonly [S, Undefined]> {
  readonly "Rebuild": UndefinedOr<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4322)

Since v3.10.0