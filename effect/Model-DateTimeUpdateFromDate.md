# DateTimeUpdateFromDate

A field that represents a date-time value that is updated as the current
`DateTime.Utc`. It is serialized as a `Date` for the database.

It is set to the current `DateTime.Utc` on updates and inserts and is
available for selection.

To import and use `DateTimeUpdateFromDate` from the "Model" module:

```ts
import * as Model from "@effect/sql/Model"
// Can be accessed like this
Model.DateTimeUpdateFromDate
```

**Signature**

```ts
export declare const DateTimeUpdateFromDate: DateTimeUpdateFromDate
```
