Package: `effect`<br />
Module: `Schema`<br />

## Schema.ExitIso

Iso representation used for `Exit` schemas.

**Details**
Successful exits are represented as `{ _tag: "Success", value }`, while failed
exits are represented as `{ _tag: "Failure", cause }`.

**Signature**

```ts
type ExitIso<A, E, D> = {
  readonly _tag: "Success"
  readonly value: A["Iso"]
} | {
  readonly _tag: "Failure"
  readonly cause: CauseIso<E, D>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8299)

Since v4.0.0