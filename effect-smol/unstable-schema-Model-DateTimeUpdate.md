Package: `effect`<br />
Module: `Model`<br />

## Model.DateTimeUpdate

A field that represents a date-time value that is updated as the current
`DateTime.Utc`. It is serialized as a string for the database.

It is set to the current `DateTime.Utc` on updates and inserts and is
available for selection.

**Signature**

```ts
declare const DateTimeUpdate: DateTimeUpdate
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L491)

Since v4.0.0