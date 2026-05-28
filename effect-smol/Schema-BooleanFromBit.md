Package: `effect`<br />
Module: `Schema`<br />

## Schema.BooleanFromBit

Schema interface for `BooleanFromBit`, a transformation between bit literals
`0 | 1` and boolean values.

**Signature**

```ts
export interface BooleanFromBit extends decodeTo<Boolean, Literals<readonly [0, 1]>> {
  readonly "Rebuild": BooleanFromBit
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11216)

Since v4.0.0