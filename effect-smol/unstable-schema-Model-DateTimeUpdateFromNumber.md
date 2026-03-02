Package: `effect`<br />
Module: `Model`<br />

## Model.DateTimeUpdateFromNumber

A field that represents a date-time value that is updated as the current
`DateTime.Utc`. It is serialized as a `number`.

It is set to the current `DateTime.Utc` on updates and inserts and is
available for selection.

**Signature**

```ts
declare const DateTimeUpdateFromNumber: DateTimeUpdateFromNumber
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L520)

Since v4.0.0