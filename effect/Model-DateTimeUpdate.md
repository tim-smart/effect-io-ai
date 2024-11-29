# DateTimeUpdate

A field that represents a date-time value that is updated as the current
`DateTime.Utc`. It is serialized as a string for the database.

It is set to the current `DateTime.Utc` on updates and inserts and is
available for selection.

To import and use `DateTimeUpdate` from the "Model" module:

ts
import \* as Model from "@effect/sql/Model"
// Can be accessed like this
Model.DateTimeUpdate
undefined

**Signature**

```ts
export declare const DateTimeUpdate: DateTimeUpdate
```
