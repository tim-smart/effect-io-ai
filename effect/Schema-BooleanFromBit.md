Package: `effect`<br />
Module: `Schema`<br />

## Schema.BooleanFromBit

Type-level representation of `BooleanFromBit`.

**Signature**

```ts
export interface BooleanFromBit extends decodeTo<Boolean, Literals<readonly [0, 1]>> {
  readonly "Rebuild": BooleanFromBit
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L11820)

Since v4.0.0