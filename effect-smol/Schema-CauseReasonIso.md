Package: `effect`<br />
Module: `Schema`<br />

## Schema.CauseReasonIso

Iso representation used for `CauseReason` schemas.

**Details**

Failures are represented with a `Fail` tag and encoded error, defects with a
`Die` tag and encoded defect, and interrupts with an optional `fiberId`.

**Signature**

```ts
type CauseReasonIso<E, D> = {
  readonly _tag: "Fail"
  readonly error: E["Iso"]
} | {
  readonly _tag: "Die"
  readonly error: D["Iso"]
} | {
  readonly _tag: "Interrupt"
  readonly fiberId: number | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8768)

Since v4.0.0