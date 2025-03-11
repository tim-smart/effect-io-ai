## DateTimeUpdateFromDate

A field that represents a date-time value that is updated as the current
`DateTime.Utc`. It is serialized as a `Date` for the database.

It is set to the current `DateTime.Utc` on updates and inserts and is
available for selection.

**Signature**

```ts
declare const DateTimeUpdateFromDate: DateTimeUpdateFromDate
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/src/Model.ts#L543)

Since v1.0.0